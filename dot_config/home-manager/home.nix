{ config, pkgs, ... }:

{
  home.stateVersion = "23.11"; # Please read the comment before changing.

  nixpkgs.config.allowUnfree = true;
  home.packages = with pkgs; [
    wget
    unzip
    kubectl
    chafa
    talosctl
    kubernetes-helm
    _1password-cli
    devbox
    pack

    deno
    gcc14
    cargo
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. These will be explicitly sourced when using a
  # shell provided by Home Manager. If you don't want to manage your shell
  # through Home Manager then you have to manually source 'hm-session-vars.sh'
  # located at either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/liqihao/etc/profile.d/hm-session-vars.sh
  #

  # Let Home Manager install and manage itself.
  programs = {
    home-manager.enable = true;
    java = {
      enable = true;
      package = pkgs.jdk;
    };
    fish = {
      enable = true;
    };
    starship = {
      enable = true;
    };
    neovim = {
      enable = true;
      defaultEditor = true;
      withNodeJs = true;
      withPython3 = true;
    };
    ripgrep.enable = true;
    fzf.enable = true;
    git = {
      enable = true;
      userName = "liqihao";
      userEmail = "liqiha0@outlook.com";
      extraConfig = {
        safe.directory = "*";
      };
    };
    lazygit.enable = true;
    yazi = {
      enable = true;
      enableFishIntegration = true;
    };
    bat.enable = true;
    zoxide = {
      enable = true;
      enableFishIntegration = true;
    };
    k9s.enable = true;
    zellij = {
      enable = true;
      settings = {
        default_layout = "welcome";
      };
    };
  };
}
