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

          pkgs.biome
          pkgs.fd
          pkgs.jq
          pkgs.nixfmt-rfc-style
          pkgs.trurl
        ];
      };
    };
}
