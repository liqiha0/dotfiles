{ config, pkgs, ... }:

{
  home.username = "liqihao";
  home.homeDirectory = "/Users/liqihao";
  home.packages = with pkgs; [
  ];

  programs = {
    fish = {
      shellInit = "eval \"$(/opt/homebrew/bin/brew shellenv)\"";
    };
    zellij = {
      enableFishIntegration = false;
    };
  };

  services = {
    ollama = {
      enable = true;
      host = "0.0.0.0";
      environmentVariables = {
        OLLAMA_ORIGINS = "*";
      };
    };
  };
}
