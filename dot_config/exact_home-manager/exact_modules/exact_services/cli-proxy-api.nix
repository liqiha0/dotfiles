{ config, lib, pkgs, ... }:

let
  serviceName = "cli-proxy-api";
  configPath = "${config.xdg.configHome}/cli-proxy-api/config.yaml";
  stateDir = "${config.xdg.stateHome}/cli-proxy-api";
  binary = lib.getExe pkgs.llm-agents.cli-proxy-api;
in
{
  home.activation.cliproxyapiStateDir = lib.hm.dag.entryAfter [ "writeBoundary" ] ''
    $DRY_RUN_CMD mkdir -p ${lib.escapeShellArg stateDir}
  '';

  systemd.user.services = lib.mkIf pkgs.stdenv.isLinux {
    ${serviceName} = {
      Unit = {
        Description = "CLIProxyAPI";
        After = [ "network-online.target" ];
        Wants = [ "network-online.target" ];
      };

      Service = {
        ExecStart = "${binary} -config ${configPath}";
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
        ProgramArguments = [ binary "-config" configPath ];
        RunAtLoad = true;
        KeepAlive = true;
        WorkingDirectory = config.home.homeDirectory;
      };
    };
  };
}
