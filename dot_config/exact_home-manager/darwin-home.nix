{ config, pkgs, ... }:

{
  imports = [
    ./modules/services/hermes-gateway.nix
    ./modules/services/hermes-web-ui.nix
  ];

  home.username = "liqihao";
  home.homeDirectory = "/Users/liqihao";
  home.packages = with pkgs; [
  ];
  home.shellAliases = {
    dropover = "open -b 'me.damir.dropover-mac'";
  };

  programs = {
    fish = {
      shellInit = "eval \"$(/opt/homebrew/bin/brew shellenv)\"";
    };
    zellij = {
      enableFishIntegration = false;
    };
    ghostty.package = pkgs.ghostty-bin;
    aerospace.enable = true;
  };

  home.file = {
    ".1password/agent.sock".source =
      config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/Library/Group Containers/2BUA8C4S2C.com.1password/t/agent.sock";
    "Library/Rime" = {
      source = (import ./modules/sources.nix { inherit pkgs; }).rime-ice;
      recursive = true;
    };

    "Library/Android".source = config.lib.file.mkOutOfStoreSymlink "/Volumes/DATA/Android";
    "Documents/Obsidian Vault".source =
      config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/Library/Mobile Documents/iCloud~md~obsidian/Documents";
  };
}
