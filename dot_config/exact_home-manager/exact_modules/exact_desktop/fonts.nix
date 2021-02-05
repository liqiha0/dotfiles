{ pkgs, ... }:

{
  home.packages = with pkgs; [
    inter
    noto-fonts-cjk-sans
    noto-fonts-cjk-serif
    noto-fonts-color-emoji
  ];

  fonts.fontconfig = {
    enable = true;
    defaultFonts = {
      sansSerif = [
        "Inter"
        "Noto Sans CJK SC"
        "Noto Sans CJK TC"
        "Noto Sans CJK JP"
        "Noto Color Emoji"
      ];
      serif = [
        "Noto Serif CJK SC"
        "Noto Serif CJK TC"
        "Noto Serif CJK JP"
        "Noto Color Emoji"
      ];
      monospace = [
        "Maple Mono"
        "Noto Sans Mono CJK SC"
        "Noto Color Emoji"
      ];
      emoji = [ "Noto Color Emoji" ];
    };
  };
}
