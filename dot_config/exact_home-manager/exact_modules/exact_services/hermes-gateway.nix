{ config, lib, pkgs, ... }:

let
  serviceName = "hermes";
  hermesHome = "${config.home.homeDirectory}/.hermes";
  logDir = "${hermesHome}/logs";
  launchCommand = "exec hermes gateway run --replace";
in
{
  home.activation.hermesGatewayLogDir = lib.hm.dag.entryAfter [ "writeBoundary" ] ''
    $DRY_RUN_CMD mkdir -p ${lib.escapeShellArg logDir}
  '';

  systemd.user.services = lib.mkIf pkgs.stdenv.isLinux {
    ${serviceName} = {
      Unit = {
        Description = "Hermes gateway";
        After = [ "network-online.target" ];
        Wants = [ "network-online.target" ];
      };

      Service = {
        ExecStart = "${lib.getExe pkgs.fish} -lc '${launchCommand}'";
        Environment = [ "HERMES_HOME=${hermesHome}" ];
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
        EnvironmentVariables = {
          HERMES_HOME = hermesHome;
        };
        KeepAlive = true;
        ProgramArguments = [ (lib.getExe pkgs.fish) "-lc" launchCommand ];
        RunAtLoad = true;
        StandardErrorPath = "${logDir}/gateway.error.log";
        StandardOutPath = "${logDir}/gateway.log";
        WorkingDirectory = config.home.homeDirectory;
      };
    };
  };
}
