{ config, pkgs, ... }:

{
  home.username = "liqihao";
  home.homeDirectory = "/Users/liqihao";
  home.packages = with pkgs; [
  ];
  home.sessionPath = [
    "/Applications/Obsidian.app/Contents/MacOS"
  ];
  home.shellAliases = {
    dropover = "open -b 'me.damir.dropover-mac'";
  };

  services.ollama.enable = true;
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
    "Documents/ObsidianVault".source =
      config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/Library/Mobile Documents/iCloud~md~obsidian/Documents";
  };
}
