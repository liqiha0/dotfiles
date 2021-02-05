{ config, pkgs, ... }:

{
  home.username = "liqihao";
  home.homeDirectory = "/Users/liqihao";

  programs = {
    fish = {
      shellInit = "eval \"$(/opt/homebrew/bin/brew shellenv)\"";
    };
  };
}
