{
  user,
  pkgs,
  ...
}:
{
  home = {
    homeDirectory = "/home/${user.username}";
    packages = with pkgs; [
      vlc
      gimp3
      wayvnc
      helvum
      easyeffects
      pavucontrol
      davinci-resolve
      r2modman
      signal-desktop-bin
      wayvnc
      wget
      jdk21
      libreoffice-qt-fresh
      remmina

      wineWowPackages.waylandFull
      winetricks
    ];
  };
}
