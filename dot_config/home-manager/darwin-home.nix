{ config, pkgs, ... }:

{
  home.username = "liqihao";
  home.homeDirectory = "/Users/liqihao";
  home.packages = with pkgs; [
  ];
  home.shellAliases = {
    dropover = "open -b 'me.damir.dropover-mac'";
  };

  services.ollama.enable = false;
  programs = {
    fish = {
      shellInit = "eval \"$(/opt/homebrew/bin/brew shellenv)\"";
    };
    zellij = {
      enableFishIntegration = false;
    };
  };

  home.file = {
    "Library/Application Support/Übersicht/widgets/simple-bar" = {
      source = pkgs.fetchFromGitHub {
        owner = "Jean-Tinland";
        repo = "simple-bar";
        rev = "98500581df8535aea3f530ec824cf7f64c904358";
        hash = "sha256-qixeEwHYKsU/xHOJZu3KT/crjiMENUUG0kSt0sBp6no=";
      };
    };
    "Library/Android".source = config.lib.file.mkOutOfStoreSymlink "/Volumes/DATA/Android";
  };
}
