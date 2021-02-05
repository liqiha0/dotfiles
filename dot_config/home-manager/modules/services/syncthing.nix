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

      folders = {
        "~/Documents/ObsidianVault" = {
          id = "xzhfj-g5nd9";
          label = "ObsidianVault";
          path = "~/Documents/ObsidianVault";
          devices = [ "LQH-DS720+" ];
        };
      };
    };
  };
}
