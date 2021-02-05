{ lib, pkgs, config, ... }:

let
  getName = x: if builtins.isString x then x else lib.getName x;

  whitelist = map getName [
    pkgs.vscode
    pkgs.obsidian
    pkgs.wechat
    pkgs.qq
    pkgs.jetbrains-toolbox
    pkgs.cider-2
    pkgs.parsec-bin
    pkgs.claude-code
    pkgs.lmstudio
    pkgs.unrar
    pkgs._1password-cli
    "antigravity-cli"
  ];
in
{
  nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) whitelist;
}
