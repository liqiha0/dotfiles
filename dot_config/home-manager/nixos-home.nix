{ config, pkgs, ... }:

{
  home.username = "liqihao";
  home.homeDirectory = "/home/liqihao";

  home.packages = with pkgs; [
    distrobox
    localsend
    winboat
    wechat
    solaar
    wpsoffice-cn
  ];

  imports = [
    ./modules/desktop/hyprland.nix
    ./modules/desktop/niri.nix
    ./modules/desktop/gtk.nix
    ./modules/desktop/noctalia.nix
    ./modules/desktop/fonts.nix
  ];

  i18n.inputMethod = {
    enable = true;
    type = "fcitx5";
    fcitx5.addons = with pkgs; [
      fcitx5-rime
    ];
  };

  home.file = {
    ".local/share/fcitx5/rime" = {
      source = (import ./modules/sources.nix { inherit pkgs; }).rime-ice;
      recursive = true;
    };
  };

  services= {
    remmina = {
      enable = true;
    };
    tailscale-systray = {
      enable = true;
    };
  };

  programs = {
    zellij = {
      enableFishIntegration = false;
    };
    zen-browser = {
      enable = true;
      suppressXdgMigrationWarning = true;
    };

    obsidian = {
      enable = true;
    };
  };
}
