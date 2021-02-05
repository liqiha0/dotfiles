{
  description = "Home Manager configuration of liqihao";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    dgop = {
      url = "github:AvengeMedia/dgop";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    dankMaterialShell = {
      url = "github:AvengeMedia/DankMaterialShell";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.dgop.follows = "dgop";
    };
    niri = {
      url = "github:sodiboo/niri-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, home-manager, dankMaterialShell, niri, ... }:
    let
      mkHome = system: modules:
        let
          pkgs = nixpkgs.legacyPackages.${system};
        in home-manager.lib.homeManagerConfiguration {
          inherit pkgs modules;
        };

    in {
      homeConfigurations."nixos" = mkHome "x86_64-linux" [ ./home.nix ./nixos-home.nix dankMaterialShell.homeModules.dankMaterialShell.default niri.homeModules.niri dankMaterialShell.homeModules.dankMaterialShell.niri ];
      homeConfigurations."darwin" = mkHome "aarch64-darwin" [ ./home.nix ./darwin-home.nix ];
    };
}
