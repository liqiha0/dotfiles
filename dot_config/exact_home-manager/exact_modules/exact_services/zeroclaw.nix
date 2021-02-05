{ config, lib, pkgs, ... }:

let
  serviceName = "zeroclaw";
  binary = lib.getExe pkgs.llm-agents.zeroclaw;
  sources = import ../sources.nix { inherit pkgs; };
  servicePath = lib.concatStringsSep ":" [
    "${config.home.homeDirectory}/.local/bin"
    "${config.home.homeDirectory}/bin"
    "${config.home.homeDirectory}/.cargo/bin"
    "${config.home.homeDirectory}/.bun/bin"
    "${config.home.homeDirectory}/.nix-profile/bin"
    "/opt/homebrew/bin"
    "/usr/local/sbin"
    "/usr/local/bin"
    "/usr/sbin"
    "/usr/bin"
    "/sbin"
    "/bin"
  ];
  commonEnv = {
    HOME = config.home.homeDirectory;
    PATH = servicePath;
  };
in
{
  config = {
    home.file = {
      ".zeroclaw/workspace/skills/acpx".source = "${sources.acpx-skills}/skills/acpx";
      ".zeroclaw/workspace/skills/json-canvas".source = "${sources.obsidian-skills}/skills/json-canvas";
      ".zeroclaw/workspace/skills/obsidian-bases".source = "${sources.obsidian-skills}/skills/obsidian-bases";
      ".zeroclaw/workspace/skills/obsidian-cli".source = "${sources.obsidian-skills}/skills/obsidian-cli";
      ".zeroclaw/workspace/skills/obsidian-markdown".source = "${sources.obsidian-skills}/skills/obsidian-markdown";
      ".zeroclaw/workspace/skills/ssot-obsidian".source =
        config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.agents/skills/personal/ssot-obsidian";
    };

    systemd.user.services = lib.mkIf pkgs.stdenv.isLinux {
    ${serviceName} = {
      Unit = {
        Description = "ZeroClaw daemon";
        After = [ "network-online.target" ];
        Wants = [ "network-online.target" ];
      };

      Service = {
        ExecStart = "${binary} daemon";
        Restart = "always";
        RestartSec = 5;
        WorkingDirectory = config.home.homeDirectory;
        Environment = lib.mapAttrsToList (name: value: "${name}=${value}") commonEnv;
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
        ProgramArguments = [ binary "daemon" ];
        RunAtLoad = true;
        KeepAlive = true;
        WorkingDirectory = config.home.homeDirectory;
        EnvironmentVariables = commonEnv;
      };
    };
  };
  };
}
