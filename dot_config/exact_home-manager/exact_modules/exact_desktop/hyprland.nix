{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    grim
    slurp
    wl-clipboard
    libnotify
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      "$mod" = "SUPER";

      bind = [
      ];
    };
  };
}
