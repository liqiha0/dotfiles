{ config, pkgs, ... }:

{
  programs = {
    dank-material-shell = {
      enable = true;
      systemd.enable = true;
      niri.enableKeybinds = true;
    };
  };
}
