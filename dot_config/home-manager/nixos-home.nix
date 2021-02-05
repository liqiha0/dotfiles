{ config, pkgs, ... }:

{
  home.username = "liqihao";
  home.homeDirectory = "/home/liqihao";

  home.packages = with pkgs; [
    distrobox
  ];

  imports = [
    ./modules/hyprland.nix
    ./modules/caelestia.nix
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
      source = pkgs.fetchFromGitHub {
        owner = "iDvel";
        repo = "rime-ice";
        rev = "c7fdbb25d6b2e50f65dfae7923a74b5272e934c2";
        hash = "sha256-ayXzpWrRq6a0g69Ohx+tHbo3YfjERhdEsCK1IMoTypw=";
      };
      recursive = true;
    };
  };

  programs = {
    zellij = {
      enableFishIntegration = false;
    };
    zen-browser.enable = true;

    obsidian = {
      enable = true;
    };
  };
}
