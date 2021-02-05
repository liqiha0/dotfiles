{ config, pkgs, ... }:

{
  programs.noctalia-shell = {
    enable = true;

    systemd.enable = true;

    settings = {
      wallpaper.overviewEnabled = true;
    };
  };
}
