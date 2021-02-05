{ config, lib, pkgs, ... }:

let
  serviceName = "opencode";
in
{
  systemd.user.services = lib.mkIf pkgs.stdenv.isLinux {
    ${serviceName} = {
      Unit = {
        Description = "OpenCode serve";
        After = [ "network-online.target" ];
        Wants = [ "network-online.target" ];
      };

      Service = {
        ExecStart = "${lib.getExe pkgs.fish} -lc 'exec opencode serve'";
        Restart = "always";
        RestartSec = 5;
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
        ProgramArguments = [ (lib.getExe pkgs.fish) "-lc" "exec opencode serve" ];
        RunAtLoad = true;
        KeepAlive = true;
        WorkingDirectory = config.home.homeDirectory;
      };
    };
  };
}
