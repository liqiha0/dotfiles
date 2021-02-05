{ config, lib, pkgs, ... }:

let
  serviceName = "paseo";
  fishExe = lib.getExe pkgs.fish;
  launchCommand = "exec paseo";
in
{
  systemd.user.services = lib.mkIf pkgs.stdenv.isLinux {
    ${serviceName} = {
      Unit = {
        Description = "Run paseo on user login";
      };

      Service = {
        Type = "oneshot";
        ExecStart = "${fishExe} -lc '${launchCommand}'";
        WorkingDirectory = config.home.homeDirectory;
      };

      Install = {
        WantedBy = [ "default.target" ];
      };
    };
  };

  launchd.agents = lib.mkIf pkgs.stdenv.isDarwin {
    ${serviceName} = {
      enable = true;
      config = {
        ProgramArguments = [ fishExe "-lc" launchCommand ];
        RunAtLoad = true;
        WorkingDirectory = config.home.homeDirectory;
      };
    };
  };
}
