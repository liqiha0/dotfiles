{ pkgs, ... }:

{
  services.syncthing = {
    enable = true;
    tray.enable = pkgs.stdenv.isLinux;

    overrideDevices = true;
    overrideFolders = true;

    settings = {
      devices = {
        "LQH-DS720+" = {
          id = "P5GRHOL-DVIDRMC-WBNJY3G-OPKVPD7-HTHFAMF-HRED2K3-D4O7C55-QYF22Q3";
        };
      };
    };
  };
}
