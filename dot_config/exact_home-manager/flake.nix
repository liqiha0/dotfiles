{
  description = "Home Manager configuration of liqihao";
  nixConfig = {
    extra-substituters = [
      "https://cache.numtide.com"
      "https://noctalia.cachix.org"
    ];
    extra-trusted-public-keys = [
      "niks3.numtide.com-1:DTx8wZduET09hRmMtKdQDxNNthLQETkc/yaX7M4qK0g="
      "noctalia.cachix.org-1:pCOR47nnMEo5thcxNDtzWpOxNFQsBRglJzxWPp3dkU4="
    ];
  };
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
    llm-agents = {
      url = "github:numtide/llm-agents.nix";
    };

    abhigyanpatwari-gitnexus = {
      url = "github:abhigyanpatwari/gitnexus";
      flake = false;
    };
    anthropics-skills = {
      url = "github:anthropics/skills";
      flake = false;
    };
    better-auth-skills = {
      url = "github:better-auth/skills";
      flake = false;
    };
    caelestia-dots-caelestia = {
      url = "github:caelestia-dots/caelestia";
      flake = false;
    };
    expo-skills = {
      url = "github:expo/skills";
      flake = false;
    };
    figma-mcp-server-guide = {
      url = "github:figma/mcp-server-guide";
      flake = false;
    };
    github-awesome-copilot = {
      url = "github:github/awesome-copilot";
      flake = false;
    };
    coreyhaines31-marketingskills = {
      url = "github:coreyhaines31/marketingskills";
      flake = false;
    };
    pbakaus-impeccable = {
      url = "github:pbakaus/impeccable";
      flake = false;
    };
    iDvel-rime-ice = {
      url = "github:iDvel/rime-ice";
      flake = false;
    };
    JuliusBrussee-caveman = {
      url = "github:JuliusBrussee/caveman";
      flake = false;
    };
    kadajett-agent-nestjs-skills = {
      url = "github:kadajett/agent-nestjs-skills";
      flake = false;
    };
    kepano-obsidian-skills = {
      url = "github:kepano/obsidian-skills";
      flake = false;
    };
    liqiha0-system-3 = {
      url = "github:liqiha0/system-3";
      flake = false;
    };
    mattpocock-skills = {
      url = "github:mattpocock/skills";
      flake = false;
    };
    nextlevelbuilder-ui-ux-pro-max-skill = {
      url = "github:nextlevelbuilder/ui-ux-pro-max-skill";
      flake = false;
    };
    NousResearch-hermes-agent = {
      url = "github:NousResearch/hermes-agent";
      flake = false;
    };
    openai-skills = {
      url = "github:openai/skills";
      flake = false;
    };
    openclaw-acpx = {
      url = "github:openclaw/acpx";
      flake = false;
    };
    openclaw-openclaw = {
      url = "github:openclaw/openclaw";
      flake = false;
    };
    prisma-skills = {
      url = "github:prisma/skills";
      flake = false;
    };
    remotion-dev-skills = {
      url = "github:remotion-dev/skills";
      flake = false;
    };
    upstash-context7 = {
      url = "github:upstash/context7";
      flake = false;
    };
    vercel-labs-agent-browser = {
      url = "github:vercel-labs/agent-browser";
      flake = false;
    };
    vercel-labs-agent-skills = {
      url = "github:vercel-labs/agent-skills";
      flake = false;
    };
    vercel-labs-next-skills = {
      url = "github:vercel-labs/next-skills";
      flake = false;
    };
    vercel-labs-skills = {
      url = "github:vercel-labs/skills";
      flake = false;
    };
    wechatpay-apiv3-wechatpay-skills = {
      url = "github:wechatpay-apiv3/wechatpay-skills";
      flake = false;
    };

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
  };

  outputs =
    { nixpkgs, home-manager, ... }@inputs:
    let
      mkPkgs =
        system:
        import nixpkgs {
          inherit system;
          overlays = [
            inputs.llm-agents.overlays.default
          ];
        };

      mkHome =
        system: modules:
        let
          githubRepos = import ./modules/github-repos.nix { inherit inputs; };
        in
        home-manager.lib.homeManagerConfiguration {
          pkgs = mkPkgs system;
          extraSpecialArgs = { inherit githubRepos; };
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
            inputs.nixvim.homeModules.nixvim
            inputs.zen-browser.homeModules.default
            inputs._1password-shell-plugins.hmModules.default
          ];
        };
      };
    };
}
