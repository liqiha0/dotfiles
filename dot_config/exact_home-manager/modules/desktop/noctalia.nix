{ config, pkgs, ... }:

{
  programs.noctalia-shell = {
    enable = true;

    systemd.enable = true;

    settings = {
      wallpaper.overviewEnabled = true;
    };
  };

  programs.niri.settings.binds = {
    "Mod+Space".action.spawn = [ "noctalia-shell" "ipc" "call" "launcher" "toggle" ];
    "Mod+V".action.spawn = [ "noctalia-shell" "ipc" "call" "launcher" "clipboard" ];
    "Mod+P".action.spawn = [ "noctalia-shell" "ipc" "call" "controlCenter" "toggle" ];
    "Mod+X".action.spawn = [ "noctalia-shell" "ipc" "call" "sessionMenu" "toggle" ];
    "Mod+Slash".action.spawn = [ "noctalia-shell" "ipc" "call" "launcher" "windows" ];
  };
}
