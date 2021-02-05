{ githubRepos, pkgs, ... }:

{
  imports = [
    ./hyprland.nix
    ./niri.nix
    ./gtk.nix
    ./noctalia.nix
    ./fonts.nix
  ];

  home.packages = with pkgs; [
    distrobox
    localsend
    winboat
    wechat
    qq
    solaar
    parsec-bin
    bubblewrap
    kdePackages.okular
    kdePackages.dolphin
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
      source = githubRepos."iDvel"."rime-ice";
      recursive = true;
    };
  };

  xdg.autostart = {
    enable = true;
  };

  home.sessionVariables = {
    GTK_USE_PORTAL = "1";
  };

  services = {
    linux-wallpaperengine = {
      enable = true;
      wallpapers = [
        {
          wallpaperId = "1195626192";
          monitor = "HDMI-A-1";
        }
        {
          wallpaperId = "1195626192";
          monitor = "eDP-1";
        }
      ];
    };
    flameshot = {
      enable = true;
    };
    remmina = {
      enable = true;
    };
    tailscale-systray = {
      enable = true;
    };
  };

  programs = {
    zen-browser = {
      enable = true;
    };
    onlyoffice.enable = true;
  };
}
