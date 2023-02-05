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
          packages = [pkgs.alejandra inputs'.mozilla-addons-to-nix.packages.default];
          env = [
            {
              name = "DEVSHELL_NO_MOTD";
              value = 1;
            }
          ];
        };
      };
    };
}
