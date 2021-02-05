{ config, inputs, pkgs, ... }:

let
  rcloneSecretPath = "${config.xdg.configHome}/rclone/synology-home-password";
in
{
  imports = [
    ./modules/neovim.nix
    ./modules/agents.nix
    ./modules/hermes.nix
    ./modules/unfree.nix
    ./modules/services/cli-proxy-api.nix
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
    _1password-cli
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
    bruno-cli
    clipboard-jh
    lrzsz
    fastfetch
    file
    unrar
    # harlequin
    usql
    duf
    ansible

    inputs.llm-agents.packages.${stdenv.hostPlatform.system}.cli-proxy-api

    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-color-emoji
    nerd-fonts.jetbrains-mono
    maple-mono.NF-CN-unhinted

    tldr
    cht-sh
    navi

    python3
    uv
    nodejs_24
    pnpm
    dotnet-sdk_10
    rustc

    prismlauncher
    # moonlight-qt
    jetbrains-toolbox
    lmstudio
  ];

  home.sessionVariables = {
    MANPAGER = "bat -plman";
  };

  home.sessionPath = [
  ];

  home.shellAliases = {
  };

  programs = {
    home-manager.enable = true;

    fish = {
      enable = true;
      interactiveShellInit = ''
        if set -q SSH_CONNECTION
          set -x OP_BIOMETRIC_UNLOCK_ENABLED false

          set -l stable_ssh_auth_sock ~/.ssh/ssh_auth_sock
          if set -q SSH_AUTH_SOCK; and test -S "$SSH_AUTH_SOCK"; and test "$SSH_AUTH_SOCK" != "$stable_ssh_auth_sock"
            mkdir -p ~/.ssh
            ln -snf "$SSH_AUTH_SOCK" "$stable_ssh_auth_sock"
            set -x SSH_AUTH_SOCK "$stable_ssh_auth_sock"
          end
        end
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
      tmux.enableShellIntegration = true;
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
      enable = false;
      prefix = "C-g";
      baseIndex = 1;
      focusEvents = true;
      mouse = true;
      keyMode = "vi";
      extraConfig = ''
        set -g allow-passthrough on
        set -g status-style bg=default
        set -g renumber-windows on
        set -g set-clipboard on
        set -g popup-style bg=default
        set -g popup-border-style bg=default
        bind r source-file ~/.config/tmux/tmux.conf
      '';
      plugins = with pkgs.tmuxPlugins; [
        sensible
        yank
        prefix-highlight
        vim-tmux-navigator
        extrakto
        tmux-fzf
        {
          plugin = catppuccin;
          extraConfig = ''
            set -g @catppuccin_flavor "mocha"
          '';
        }
      ];
    };
    zoxide = {
      enable = true;
      enableFishIntegration = true;
    };
    sesh = {
      enable = true;
    };
    eza = {
      enable = true;
    };
    yazi = {
      enable = true;
      enableFishIntegration = true;
      extraPackages = with pkgs; [
        git
      ];
      plugins = {
        git = pkgs.yaziPlugins.git;
      };
      settings = {
        mgr = {
          show_hidden = true;
        };
      };
    };
    btop = {
      enable = true;
    };
    superfile = {
      enable = true;
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
    lazysql.enable = true;
    gh.enable = true;
    gh-dash.enable = true;
    aerc.enable = false;

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
    delta = {
      enable = true;
      enableGitIntegration = true;
    };
    jujutsu = {
      enable = true;
      settings = {
        user = {
          name = "liqihao";
          email = "liqiha0@outlook.com";
        };
        ui = {
          pager = "delta";
          diff-formatter = ":git";
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
    rclone = {
      enable = true;

      remotes.synology-home = {
        config = {
          type = "smb";
          host = "10.0.0.2";
          user = "liqihao";
        };
        secrets.pass = rcloneSecretPath;

        mounts.home = {
          enable = true;
          autoMount = true;
          mountPoint = "${config.home.homeDirectory}/remotes/synology-home";
          mountType = if pkgs.stdenv.hostPlatform.isDarwin then "nfsmount" else "mount";
          options = {
            vfs-cache-mode = "writes";
            vfs-cache-max-age = "1h";
            vfs-cache-max-size = "10G";
            dir-cache-time = "1m";
          };
        };
      };
    };

    ghostty = {
      enable = true;
      enableFishIntegration = true;
    };
    zed-editor = {
      enable = false;
    };
    vscode = {
      enable = false;
    };
    obsidian = {
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
    cargo.enable = true;
  };
}
