{ config, lib, pkgs, ... }:

let
  serviceName = "zeroclaw";
  sources = import ../sources.nix { inherit pkgs; };
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
        ExecStart = "${lib.getExe pkgs.fish} -lc 'exec zeroclaw daemon'";
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
        ProgramArguments = [ (lib.getExe pkgs.fish) "-lc" "exec zeroclaw daemon" ];
        RunAtLoad = true;
        KeepAlive = true;
        WorkingDirectory = config.home.homeDirectory;
      };
    };
  };
  };
}
