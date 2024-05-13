{ lib, ... }:
{
  perSystem =
    {
      config,
      inputs',
      pkgs,
      ...
    }:
    {
      devshells.ci = {
        packages = [
          inputs'.mozilla-addons-to-nix.packages.default
        ];
      };
      devshells.default = {
        devshell.name = "firefox-addons";
        packages = [
          inputs'.mozilla-addons-to-nix.packages.default

          pkgs.fd
          pkgs.jq
          pkgs.nixfmt-rfc-style
          pkgs.nodePackages.prettier
        ];
        commands = [
          {
            package = pkgs.just;
            category = "tools";
          }
          {
            name = "fmt";
            category = "tools";
            help = "format all (non-generated) nix files";
            command = ''
              ${lib.getExe pkgs.fd} \
                --type file \
                --extension nix \
                --exclude '*.generated.*' \
                --exec-batch ${lib.getExe config.formatter} '{}'
            '';
          }
          {
            # TODO: accept moz url input
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
}
