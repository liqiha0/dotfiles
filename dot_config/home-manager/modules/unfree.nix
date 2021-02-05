{ lib, pkgs, config, ... }:

let
  getName = x: if builtins.isString x then x else lib.getName x;

  whitelist = map getName [
    pkgs.vscode
    pkgs.antigravity
    pkgs.obsidian
    pkgs.wechat
  ];
in
{
  nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) whitelist;
}
