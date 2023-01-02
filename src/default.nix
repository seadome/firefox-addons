{
  perSystem = {pkgs, ...}: let
    buildFirefoxXpiAddon = pkgs.callPackage ./buildFirefoxXpiAddon.nix {};
  in {
    packages = pkgs.callPackages ./addons.generated.nix {
      inherit buildFirefoxXpiAddon;
    };
  };
}
