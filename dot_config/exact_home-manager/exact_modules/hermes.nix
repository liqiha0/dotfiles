{ inputs, pkgs, ... }:

{
  home.packages = with pkgs; [
    inputs.NousResearch-hermes-agent.packages.${pkgs.stdenv.hostPlatform.system}.default
    python314Packages.tiktoken
  ];

  home.file = {
    ".hermes/hermes-agent" = {
      source = inputs.NousResearch-hermes-agent.outPath;
    };
  };
}
