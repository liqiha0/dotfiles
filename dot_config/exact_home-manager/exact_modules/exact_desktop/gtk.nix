{ pkgs, ... }:

{
  home.pointerCursor = {
    name = "WhiteSur-cursors";
    package = pkgs.whitesur-cursors;
    size = 24;
    gtk.enable = true;
    x11.enable = true;
  };

  gtk = {
    enable = true;
    
    iconTheme = {
      name = "Papirus";
      package = pkgs.papirus-icon-theme;
    };
  };

  qt = {
    enable = true;
    platformTheme = {
      name = "qt6ct";
      package = [
        pkgs.libsForQt5.qt5ct
        pkgs.qt6Packages.qt6ct
      ];
    };

    qt5ctSettings.Appearance = {
      icon_theme = "Papirus";
      style = "Fusion";
    };

    qt6ctSettings.Appearance = {
      icon_theme = "Papirus";
      style = "Fusion";
    };
  };
}
