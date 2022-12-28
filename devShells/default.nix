{
  perSystem = ctx @ {pkgs, ...}: {
    devShells.default = pkgs.mkShell {
      packages = [
        ctx.config.formatter
        # Avoid Haskell IFD for every single supported system
        (pkgs.writeShellScriptBin "mozilla-addons-to-nix" ''
          nix run sourcehut:~rycee/mozilla-addons-to-nix -- "$@"
        '')
      ];
    };
  };
}
