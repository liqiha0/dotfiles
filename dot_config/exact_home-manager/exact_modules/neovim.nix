{ pkgs, lib, ... }:

{
  programs = {
    nixvim = {
      enable = true;
      defaultEditor = true;

      extraPackages =
        with pkgs;
        [
          tree-sitter
          curl
          python3
          nodejs_24
          rustc
          cargo
          imagemagick
          nixfmt
          statix
          fzf
          ripgrep
          fd
        ]
        ++ lib.optionals stdenv.hostPlatform.isLinux [
          gcc
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
