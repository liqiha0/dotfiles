{
  description = "Home Manager configuration of liqihao";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    _1password-shell-plugins.url = "github:1Password/shell-plugins";
    openclaw.url = "github:openclaw/nix-openclaw";
    caelestia-shell = {
      url = "github:caelestia-dots/shell";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    dankMaterialShell = {
      url = "github:AvengeMedia/DankMaterialShell";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    noctalia = {
      url = "github:noctalia-dev/noctalia-shell";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    niri = {
      url = "github:sodiboo/niri-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    llm-agents = {
      url = "github:numtide/llm-agents.nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    { nixpkgs, home-manager, ... }@inputs:
    let
      mkHome =
        system: modules:
        home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages.${system}.extend (
            nixpkgs.lib.composeManyExtensions [
              inputs.openclaw.overlays.default
              inputs.llm-agents.overlays.default
            ]
          );
          inherit modules;
        };
    in
    {
      legacyPackages = {
        "x86_64-linux" = {
          homeConfigurations."liqihao" = mkHome "x86_64-linux" [
            ./home.nix
            ./nixos-home.nix
            inputs.nixvim.homeModules.nixvim
            inputs.zen-browser.homeModules.default
            inputs._1password-shell-plugins.hmModules.default
            inputs.openclaw.homeManagerModules.openclaw
            inputs.caelestia-shell.homeManagerModules.default
            inputs.niri.homeModules.niri
            inputs.dankMaterialShell.homeModules.dank-material-shell
            inputs.dankMaterialShell.homeModules.niri
            inputs.noctalia.homeModules.default
          ];
        };

        "aarch64-darwin" = {
          homeConfigurations."liqihao" = mkHome "aarch64-darwin" [
            ./home.nix
            ./darwin-home.nix
            ./modules/openclaw.nix
            inputs.nixvim.homeModules.nixvim
            inputs.zen-browser.homeModules.default
            inputs._1password-shell-plugins.hmModules.default
            inputs.openclaw.homeManagerModules.openclaw
          ];
        };
      };
    };
}
