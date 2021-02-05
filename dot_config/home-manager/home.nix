{ config, pkgs, ... }:

{
  imports = [
    ./modules/neovim.nix
    ./modules/agents.nix
    ./modules/unfree.nix
    ./modules/services/syncthing.nix
  ];

  home.stateVersion = "26.05";

  home.language = {
    base = "zh_CN.UTF-8";
  };

  fonts.fontconfig = {
    enable = true;
  };

  home.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-color-emoji
    wget
    curl
    httpie
    curlie
    unzip
    kubectl
    chafa
    talosctl
    kubernetes-helm
    devbox
    pack
    pandoc
    fx
    yq
    dust
    gping
    posting
    gitlab-ci-local
    sshpass
    tunnelto
    prismlauncher
    bruno-cli

    nerd-fonts.jetbrains-mono
    maple-mono.NF-CN-unhinted

    tldr
    cht-sh
    navi

    python3
    uv
    # nodejs_24

    telegram-desktop
    moonlight-qt
    jetbrains-toolbox
  ];

  home.sessionVariables = {
  };

  home.sessionPath = [
  ];

  home.shellAliases = {
    specify = "uvx --from git+https://github.com/github/spec-kit.git specify";
  };

  programs = {
    home-manager.enable = true;

    fish = {
      enable = true;
      interactiveShellInit = ''
        if not set -q SSH_CONNECTION
          set -x SSH_AUTH_SOCK ~/.1password/agent.sock
        end
        if set -q NVIM
          fish_default_key_bindings
          set -g fish_key_bindings fish_default_key_bindings
        else
          fish_vi_key_bindings
          set -g fish_key_bindings fish_vi_key_bindings
        end
        set -e -U fish_key_bindings
        set fish_greeting
      '';
    };
    atuin = {
      enable = true;
      enableFishIntegration = true;
      settings = {
        auto_sync = true;
        sync_frequency = "5m";
        search_mode = "fuzzy";
        filter_mode = "global";
        sync_address = "http://10.0.0.2:8888";
      };
    };
    fzf = {
      enable = true;
    };
    carapace = {
      enable = true;
    };
    nushell = {
      enable = true;
    };
    starship = {
      enable = true;
    };
    zellij = {
      enable = true;
    };
    tmux = {
      enable = true;
      plugins = with pkgs.tmuxPlugins; [
        {
          plugin = catppuccin;
          extraConfig = ''
            set -g @catppuccin_flavor "mocha"
            set -g @catppuccin_window_status_style "rounded"
          '';
        }
        sensible
        yank
        vim-tmux-navigator
        tmux-fzf
        battery
        prefix-highlight
      ];
      extraConfig = builtins.replaceStrings
        [ "__TMUX_FZF_PLUGIN_DIR__" ]
        [ "${pkgs.tmuxPlugins.tmux-fzf}/share/tmux-plugins/tmux-fzf" ]
        (builtins.readFile ../tmux/tmux.conf);
    };
    zoxide = {
      enable = true;
      enableFishIntegration = true;
    };
    eza = {
      enable = true;
    };
    yazi = {
      enable = true;
      enableFishIntegration = true;
      settings = {
        mgr = {
          show_hidden = true;
        };
      };
    };
    bottom = {
      enable = true;
    };
    jq = {
      enable = true;
    };
    bat.enable = true;
    k9s.enable = true;
    lazygit.enable = true;
    lazydocker.enable = true;
    gh.enable = true;
    gh-dash.enable = true;

    git = {
      enable = true;
      settings = {
        user = {
          name = "liqihao";
          email = "liqiha0@outlook.com";
        };
        core = {
          autocrlf = "input";
        };
        init = {
          defaultBranch = "master";
        };
      };
    };
    delta.enable = true;
    jujutsu = {
      enable = true;
      settings = {
        user = {
          name = "liqihao";
          email = "liqiha0@outlook.com";
        };
        ui = {
          conflict-marker-style = "git";
        };
      };
    };
    jjui.enable = true;

    helix = {
      enable = true;
    };

    ssh = {
      enable = true;
      enableDefaultConfig = false;
      includes = [ "~/.ssh/1Password/config" "~/.orbstack/ssh/config" ];
    };

    ghostty = {
      enable = true;
      enableFishIntegration = true;
    };
    zed-editor = {
      enable = false;
    };
    vscode = {
      enable = true;
    };

    java = {
      enable = true;
    };
    gradle = {
      enable = true;
    };
    go.enable = true;
    bun.enable = true;
  };
}
