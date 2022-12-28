{
  description = "firefox addons manifest";
  inputs.nixpkgs.url = "github:numtide/nixpkgs-unfree";
  inputs.nixpkgs.inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  inputs.flake-parts.url = "github:hercules-ci/flake-parts";
  inputs.mozilla-addons-to-nix.url = "sourcehut:~rycee/mozilla-addons-to-nix";
  outputs = inputs @ {flake-parts, ...}:
    flake-parts.lib.mkFlake {inherit inputs;} {
      imports = [./devShells ./packages];
      systems = ["aarch64-linux" "aarch64-darwin" "x86_64-darwin" "x86_64-linux"];
      perSystem = {inputs', ...}: {
        _module.args.pkgs = inputs'.nixpkgs.legacyPackages;
        formatter = inputs'.nixpkgs.legacyPackages.alejandra;
      };
    };
}
