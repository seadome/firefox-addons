{
  description = "firefox addons manifest";

  inputs = {
    nixpkgs.url = "github:numtide/nixpkgs-unfree";
    nixpkgs.inputs.nixpkgs.follows = "nixos-unstable";
    nixos-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";

    flake-parts.url = "github:hercules-ci/flake-parts";
    devshell.url = "github:numtide/devshell";

    mozilla-addons-to-nix.url = "sourcehut:~rycee/mozilla-addons-to-nix";
  };

  outputs = inputs @ {flake-parts, ...}:
    flake-parts.lib.mkFlake {inherit inputs;} {
      imports = [./src];
      systems = ["aarch64-linux" "aarch64-darwin" "x86_64-darwin" "x86_64-linux"];
      perSystem = {
        inputs',
        config,
        pkgs,
        ...
      }: {
        _module.args.pkgs = inputs'.nixpkgs.legacyPackages;
        formatter = pkgs.alejandra;
        # TODO: build all <https://github.com/NixOS/nix/issues/7165>
        # packages.all = pkgs.symlinkJoin {
        #     name = "all";
        #     paths = with code; [ app wasm ];
        #   };
        devShells.default = config.devShells.ci;
        devShells.ci = inputs'.devshell.legacyPackages.mkShell {
          name = "seadome/firefox-addons";
          packages = [pkgs.alejandra inputs'.mozilla-addons-to-nix.packages.default];
          commands = [
            {
              name = "add-addon";
              category = "maintenance";
              command = ''
                SLUG="$1"
                PNAME="''${2:-}"
                MANIFEST="$PRJ_ROOT/src/addons.json"

                cp "$MANIFEST" "$MANIFEST.tmp"
                cat "$MANIFEST" \
                  | ${pkgs.jq}/bin/jq \
                      --arg slug "$SLUG" \
                      --arg pname "$PNAME" \
                      '. + [(
                        {slug: $slug}
                        + if ($pname != "")
                          then {pname: $pname}
                          else {} end
                      )]
                      | sort_by(.slug)' \
                  > "''${MANIFEST}.tmp"
                mv $MANIFEST.tmp $MANIFEST
              '';
            }
            {
              name = "rm-addon";
              category = "maintenance";
              help = "Remove an addon by its slug :: SYNOPSIS: <slug>";
              command = ''
                SLUG="$1"
                MANIFEST="$PRJ_ROOT/src/addons.json"

                cp "$MANIFEST" "$MANIFEST.tmp"
                # TODO: return error if not found
                cat "$MANIFEST" \
                  | ${pkgs.jq}/bin/jq \
                      --arg slug "$SLUG" \
                      'map(select(.slug != $slug))' \
                  > "''${MANIFEST}.tmp"
                mv $MANIFEST.tmp $MANIFEST
              '';
            }
            {
              name = "update-addons";
              category = "maintenance";
              help = "Update the addons listed in the manifest";
              command = ''
                mozilla-addons-to-nix $PRJ_ROOT/src/addons.json $PRJ_ROOT/src/addons.generated.nix
              '';
            }
            {
              name = "update-flake";
              category = "maintenance";
              help = "Update the flake dependencies";
              command = "nix flake update";
            }
          ];
        };
      };
    };
}
