{
  description = "Home Manager configuration of liqihao";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, home-manager, ... }:
    let
      nixosPkgs = nixpkgs.legacyPackages."x86_64-linux";
      darwinPkgs = nixpkgs.legacyPackages."aarch64-darwin";
    in {
      homeConfigurations."liqihao@nixos" = home-manager.lib.homeManagerConfiguration {
        pkgs = nixosPkgs;
        modules = [ ./home.nix ./nixos-home.nix ];
      };
      homeConfigurations."liqihao@darwin" = home-manager.lib.homeManagerConfiguration {
        pkgs = darwinPkgs;
        modules = [ ./home.nix ./darwin-home.nix ];
      };
    };
}
