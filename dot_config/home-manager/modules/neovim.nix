{ pkgs, ... }:

{
  programs.nixvim = {
    enable = true;
    defaultEditor = true;

    extraPackages = with pkgs; [
      git
      ripgrep
      fd
      curl
      gcc
      gnumake
      python3
      nodejs_22
    ];

    globals = {
      mapleader = " ";
      maplocalleader = "\\";
      autoformat = false;
    };

    opts = {
      clipboard = ""; 
      relativenumber = false;
      number = true;
    };

    plugins.lazy = {
      enable = true;
      
      settings = {
        spec = [
          {
            __unkeyed-1 = "LazyVim/LazyVim";
            import = "lazyvim.plugins";
          }
          { import = "plugins"; }
          {
            __unkeyed-1 = "folke/lazy.nvim";
            enabled = false;
          }
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
    
    extraConfigLua = ''
      if vim.g.neovide then
        vim.g.neovide_opacity = 0.9
        vim.g.neovide_window_blurred = true
      end
    '';
  };
}
