{
  description = "firefox addons manifest";

  inputs = {
    ##: core
    flake-parts.url = "github:hercules-ci/flake-parts";
    devshell.url = "github:numtide/devshell";

    ##: tools
    mozilla-addons-to-nix.url = "sourcehut:~rycee/mozilla-addons-to-nix";

    ##: channels
    # NOTE: we need to allow unfree licenses for some of these extensions.
    nixpkgs.url = "github:numtide/nixpkgs-unfree";
    nixpkgs.inputs.nixpkgs.follows = "nixos-unstable";
    nixos-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs =
    inputs@{ flake-parts, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      imports = [
        inputs.devshell.flakeModule
        ./devshells.nix
        ./src
      ];
      systems = [
        "aarch64-linux"
        "aarch64-darwin"
        "x86_64-darwin"
        "x86_64-linux"
      ];
      flake = {
        _module.args.lib = inputs.nixpkgs.lib;
      };
      perSystem =
        { inputs', pkgs, ... }:
        {
          _module.args.pkgs = inputs'.nixpkgs.legacyPackages;

          formatter = pkgs.nixfmt;

          # TODO: build all <https://github.com/NixOS/nix/issues/7165>
          # packages.all = pkgs.symlinkJoin {
          #     name = "all";
          #     paths = with code; [ app wasm ];
          #   };
        };
    };
}
