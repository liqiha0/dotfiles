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
      nodejs_24
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
}
