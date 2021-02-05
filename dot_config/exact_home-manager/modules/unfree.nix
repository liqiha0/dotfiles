{ lib, pkgs, config, ... }:

let
  getName = x: if builtins.isString x then x else lib.getName x;

  whitelist = map getName [
    pkgs.vscode
    pkgs.antigravity
    pkgs.obsidian
    pkgs.wechat
    pkgs.wpsoffice-cn
    pkgs.jetbrains-toolbox
    pkgs.cider-2
    pkgs.widevine-cdm
  ];
in
{
  nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) whitelist;
}
