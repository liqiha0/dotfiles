{ pkgs, ... }:
{
  imports = [
    ./modules/desktop
  ];

  home = {
    username = "liqihao";
    homeDirectory = "/home/liqihao";

    packages = with pkgs; [
      distrobox
    ];
  };
}
