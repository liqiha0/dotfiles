{ config, pkgs, ... }:

let
  sources = import ./sources.nix { inherit pkgs; };
in
{
  home.packages = with pkgs; [
    (pkgs.writeShellScriptBin "opencode" ''
      exec pnpm dlx opencode-ai "$@"
    '')
    (pkgs.writeShellScriptBin "clawdbot" ''
      exec pnpm dlx clawdbot@latest "$@"
    '')
    (pkgs.writeShellScriptBin "gemini" ''
      exec pnpm dlx @google/gemini-cli "$@"
    '')
    (pkgs.writeShellScriptBin "codex" ''
      exec pnpm dlx @openai/codex "$@"
    '')
    (pkgs.writeShellScriptBin "codex-acp" ''
      exec pnpm dlx @zed-industries/codex-acp "$@"
    '')
    (pkgs.writeShellScriptBin "agent-browser" ''
      exec pnpm dlx agent-browser "$@"
    '')

    maestro
    antigravity
  ];

  home.file = {
    ".config/opencode/skills/skill-creator".source = "${sources.anthropics-skills}/skills/skill-creator";
    # ".config/opencode/skills/agent-browser".source = "${sources.agent-browser}/skills/agent-browser";
    ".config/opencode/skills/json-canvas".source = "${sources.obsidian-skills}/skills/json-canvas";
    ".config/opencode/skills/obsidian-bases".source = "${sources.obsidian-skills}/skills/obsidian-bases";
    ".config/opencode/skills/obsidian-markdown".source = "${sources.obsidian-skills}/skills/obsidian-markdown";
  };
}
