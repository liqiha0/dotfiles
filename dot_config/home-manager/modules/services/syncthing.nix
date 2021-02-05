{ pkgs, ... }:

{
  services.syncthing = {
    enable = true;
    # Tray is only supported on Linux
    tray.enable = pkgs.stdenv.isLinux;
  };
}
