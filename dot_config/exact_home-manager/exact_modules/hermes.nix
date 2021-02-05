{ inputs, pkgs, ... }:

{
  home.packages = with pkgs; [
    inputs.NousResearch-hermes-agent.packages.${pkgs.stdenv.hostPlatform.system}.default
  ];

  home.file = {
    ".hermes/hermes-agent" = {
      source = inputs.NousResearch-hermes-agent.outPath;
    };
  };
}
