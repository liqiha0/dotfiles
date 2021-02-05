{ lib, pkgs, ... }:
let
  isLinux = pkgs.stdenv.hostPlatform.isLinux;
  isDarwin = pkgs.stdenv.hostPlatform.isDarwin;
in
lib.mkMerge [
  {
    home.packages = with pkgs; [
      blender
      # prismlauncher
      # moonlight-qt
      jetbrains-toolbox
      lmstudio
      # godot
    ];

    programs = {
      ghostty = {
        enable = true;
        enableFishIntegration = true;
      };
      zed-editor.enable = true;
      vscode.enable = false;
    };
  }

  (lib.mkIf isLinux {
    home.packages = with pkgs; [
      localsend
      wechat
      qq
      libreoffice
      vlc
      gimp
      nautilus
    ];

    services.remmina.enable = true;

    programs = {
      zen-browser.enable = true;
      obsidian.enable = true;
    };
  })

  (lib.mkIf isDarwin {
    home.shellAliases.dropover = "open -b 'me.damir.dropover-mac'";

    programs = {
      ghostty.package = pkgs.ghostty-bin;
      aerospace.enable = true;
    };
  })
]
