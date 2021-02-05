{ config, pkgs, ... }:

{
  home.username = "liqihao";
  home.homeDirectory = "/Users/liqihao";
  home.packages = with pkgs; [
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
    ".1password/agent.sock".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/Library/Group Containers/2BUA8C4S2C.com.1password/t/agent.sock";
    "Library/Application Support/Übersicht/widgets/simple-bar" = {
      source = pkgs.fetchFromGitHub {
        owner = "Jean-Tinland";
        repo = "simple-bar";
        rev = "72fde02899c0b2ce2a9f69e6a198929dfac8600c";
        hash = "sha256-1kchlfGVXzlSXC5s3pUVrVyXCKj596mJILCKlucyfHQ=";
      };
    };
    "Library/Rime" = {
      source = import ./modules/rime-ice.nix { inherit pkgs; };
      recursive = true;
    };

    "Library/Android".source = config.lib.file.mkOutOfStoreSymlink "/Volumes/DATA/Android";
  };
}
