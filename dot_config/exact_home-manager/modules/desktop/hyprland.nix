{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    grim
    slurp
    wl-clipboard
    libnotify
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      "$mod" = "SUPER";

      bind = [
        "$mod, Return, exec, ghostty"
        # Dank Material Shell bindings
        # "$mod, D, exec, fuzzel" # Replaced by DMS Spotlight
        "$mod, Space, exec, dms ipc call spotlight toggle"
        "$mod, V, exec, dms ipc call clipboard toggle"
        "$mod, P, exec, dms ipc call notepad toggle"
        "$mod, X, exec, dms ipc call powermenu toggle"
        "$mod, Slash, exec, dms ipc call hypr toggleBinds"
        "$mod, Tab, exec, dms ipc call hypr toggleOverview"
        ", XF86AudioRaiseVolume, exec, dms ipc call audio increment 3"
        ", XF86AudioLowerVolume, exec, dms ipc call audio decrement 3"
        ", XF86AudioMute, exec, dms ipc call audio mute"
        ", XF86MonBrightnessUp, exec, dms ipc call brightness increment 5 \"\""
        ", XF86MonBrightnessDown, exec, dms ipc call brightness decrement 5 \"\""

        "$mod, Q, killactive,"
        "$mod, F, fullscreen,"
        "$mod Shift, F, togglefloating,"
        "$mod, R, exec, hyprctl reload"
        # "$mod, P, pseudo," # Replaced by DMS Notepad
        # "$mod, J, togglesplit," # Conflict with movefocus

        "$mod, Print, exec, grim -g \"$(slurp)\" - | wl-copy && notify-send 'Screenshot' 'Copied to clipboard'"
        "$mod SHIFT, Print, exec, mkdir -p ~/Pictures/Screenshots && grim -g \"$(slurp)\" ~/Pictures/Screenshots/$(date +%Y-%m-%d_%H-%M-%S).png && notify-send 'Screenshot' 'Saved to Pictures/Screenshots'"

        "$mod, H, movefocus, l"
        "$mod, J, movefocus, d"
        "$mod, K, movefocus, u"
        "$mod, L, movefocus, r"
        "$mod SHIFT, H, movewindow, l"
        "$mod SHIFT, J, movewindow, d"
        "$mod SHIFT, K, movewindow, u"
        "$mod SHIFT, L, movewindow, r"

        "$mod, 1, workspace, 1"
        "$mod, 2, workspace, 2"
        "$mod, 3, workspace, 3"
        "$mod, 4, workspace, 4"
        "$mod, 5, workspace, 5"
        "$mod, 6, workspace, 6"
        "$mod, 7, workspace, 7"
        "$mod, 8, workspace, 8"
        "$mod, 9, workspace, 9"
        "$mod, 0, workspace, 10"
        "$mod SHIFT, 1, movetoworkspace, 1"
        "$mod SHIFT, 2, movetoworkspace, 2"
        "$mod SHIFT, 3, movetoworkspace, 3"
        "$mod SHIFT, 4, movetoworkspace, 4"
        "$mod SHIFT, 5, movetoworkspace, 5"
        "$mod SHIFT, 6, movetoworkspace, 6"
        "$mod SHIFT, 7, movetoworkspace, 7"
        "$mod SHIFT, 8, movetoworkspace, 8"
        "$mod SHIFT, 9, movetoworkspace, 9"
        "$mod SHIFT, 0, movetoworkspace, 10"
      ];
    };
  };
}
