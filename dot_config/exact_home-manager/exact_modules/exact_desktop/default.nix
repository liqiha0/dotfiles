{ inputs, pkgs, ... }:
{
  imports = [
    ./hyprland.nix
    ./noctalia.nix
    ./gtk.nix
    ./fonts.nix
    ../gui.nix
  ];

  home.packages = with pkgs; [
    bubblewrap
  ];

  i18n.inputMethod = {
    enable = true;
    type = "fcitx5";
    fcitx5 = {
      addons = with pkgs; [
        fcitx5-rime
        fcitx5-tokyonight
      ];
      settings.addons.classicui.globalSection.Theme = "Tokyonight-Storm";
    };
  };

  home.file = {
    ".local/share/fcitx5/rime" = {
      source = inputs."iDvel-rime-ice";
      recursive = true;
    };
  };

  xdg = {
    portal = {
      enable = true;
    };
    autostart = {
      enable = true;
    };
  };

  services = {
    linux-wallpaperengine = {
      enable = true;
      wallpapers = [
        {
          wallpaperId = "1493910771";
          monitor = "HDMI-A-1";
        }
        {
          wallpaperId = "1493910771";
          monitor = "eDP-1";
        }
      ];
    };
    tailscale-systray = {
      enable = true;
    };
  };
}
