{ ... }:

{
  programs.noctalia = {
    enable = true;

    settings = {
      backdrop.enabled = true;
      location = {
        auto_locate = true;
      };
      theme = {
        mode = "auto";
      };
    };
  };

  wayland.windowManager.hyprland.settings = {
    exec-once = [
      "noctalia"
    ];
    bind = [
      "$mod, Space, exec, noctalia msg panel-toggle launcher"
      "$mod, V, exec, noctalia msg panel-toggle clipboard"
      "$mod, P, exec, noctalia msg panel-toggle control-center"
      "$mod, X, exec, noctalia msg panel-toggle session"
      "$mod, Slash, exec, noctalia msg window-switcher"
    ];
  };
}
