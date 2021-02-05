{ config, pkgs, ... }:

{
  home.username = "liqihao";
  home.homeDirectory = "/home/liqihao";

  home.packages = with pkgs; [
    distrobox
  ];

  programs = {
    zellij = {
      enableFishIntegration = true;
    };
  };
}
