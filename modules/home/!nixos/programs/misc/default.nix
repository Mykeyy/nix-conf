{ pkgs, ... }:
{
  home.packages = with pkgs; [
    postman
    #parsec-bin
    pgadmin4-desktopmode
    viu
    chromium
    ffmpeg
    file
    fd
    tree
    unzip
    nil
    ytui-music
    nixd
    yt-dlp
    tldr
    yazi
    remmina
  ];
}
