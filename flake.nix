{
  description = "firefox addons manifest";

  inputs = {
    nixpkgs.url = "github:numtide/nixpkgs-unfree";
    nixpkgs.inputs.nixpkgs.follows = "nixos-unstable";
    nixos-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";

    flake-parts.url = "github:hercules-ci/flake-parts";
    flake-root.url = "github:srid/flake-root";
    mission-control.url = "github:Platonic-Systems/mission-control";

    mozilla-addons-to-nix.url = "sourcehut:~rycee/mozilla-addons-to-nix";
  };

  outputs = inputs @ {flake-parts, ...}: let
    l = inputs.nixpkgs.lib // builtins;
  in
    flake-parts.lib.mkFlake {inherit inputs;} {
      imports = [
        inputs.flake-root.flakeModule
        inputs.mission-control.flakeModule
        ./src
      ];
      systems = ["aarch64-linux" "aarch64-darwin" "x86_64-darwin" "x86_64-linux"];
      perSystem = {
        inputs',
        config,
        pkgs,
        ...
      }: {
        _module.args.pkgs = inputs'.nixpkgs.legacyPackages;
        formatter = pkgs.alejandra;
        devShells.default = config.mission-control.installToDevShell (pkgs.mkShell {});
        mission-control.scripts = {
          update = {
            description = "Update the Firefox addons from the addons.json manifest file.";
            exec = ''
              ${l.getExe inputs'.mozilla-addons-to-nix.packages.default} \
                ./src/addons.json \
                ./src/addons.generated.nix
            '';
            category = "actions";
          };
        };
      };
    };
}
