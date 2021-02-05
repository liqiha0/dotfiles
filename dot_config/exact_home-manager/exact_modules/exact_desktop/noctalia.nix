{ ... }:

{
  programs.noctalia-shell = {
    enable = true;

    settings = {
      wallpaper.overviewEnabled = true;
      colorSchemes = {
        darkMode = false;
      };
    };
  };

  programs.niri.settings.spawn-at-startup = [
    { argv = [ "noctalia-shell" ]; }
  ];

  wayland.windowManager.hyprland.settings.exec-once = [
    "noctalia-shell"
  ];

  wayland.windowManager.hyprland.settings.bind = [
    "$mod, Space, exec, noctalia-shell ipc call launcher toggle"
    "$mod, V, exec, noctalia-shell ipc call launcher clipboard"
    "$mod, P, exec, noctalia-shell ipc call controlCenter toggle"
    "$mod, X, exec, noctalia-shell ipc call sessionMenu toggle"
    "$mod, Slash, exec, noctalia-shell ipc call launcher windows"
  ];

  programs.niri.settings.binds = {
    "Mod+Space".action.spawn = [ "noctalia-shell" "ipc" "call" "launcher" "toggle" ];
    "Mod+V".action.spawn = [ "noctalia-shell" "ipc" "call" "launcher" "clipboard" ];
    "Mod+P".action.spawn = [ "noctalia-shell" "ipc" "call" "controlCenter" "toggle" ];
    "Mod+X".action.spawn = [ "noctalia-shell" "ipc" "call" "sessionMenu" "toggle" ];
    "Mod+Slash".action.spawn = [ "noctalia-shell" "ipc" "call" "launcher" "windows" ];
  };
}
