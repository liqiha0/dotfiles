{ pkgs, ... }:

{
  programs = {
    git.enable = true;
    lazygit.enable = true;
    fzf.enable = true;
    ripgrep.enable = true;
    fd.enable = true;
    nixvim = {
      enable = true;
      defaultEditor = true;

      extraPackages = with pkgs; [
        tree-sitter
        curl
        gcc
        python3
        nodejs_24
        rustc
        cargo

        nixfmt
        statix
      ];

      plugins.lazy = {
        enable = true;

        settings = {
          spec = [
            {
              __unkeyed-1 = "folke/lazy.nvim";
              enabled = false;
            }
            {
              __unkeyed-1 = "LazyVim/LazyVim";
              import = "lazyvim.plugins";
            }
            { import = "plugins"; }
          ];

          defaults = {
            lazy = false;
            version = false;
          };

          checker = {
            enabled = false;
          };
        };
      };
    };
  };
}
