{ lib, pkgs, config, ... }:

let
  getName = x: if builtins.isString x then x else lib.getName x;

  whitelist = map getName [
    pkgs.vscode
    pkgs.antigravity
    pkgs.obsidian
    pkgs.wechat
    pkgs.qq
    pkgs.wpsoffice-cn
    pkgs.jetbrains-toolbox
    pkgs.cider-2
    pkgs.widevine-cdm
    pkgs.parsec-bin
    pkgs.claude-code
    pkgs.lmstudio
    pkgs.unrar
  ];
in
{
  nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) whitelist;
}
