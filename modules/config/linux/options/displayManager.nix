{
  system,
  pkgs,
  ...
}:
{
  services.displayManager = {
    gdm = {
      enable = system.greeter == "gdm";
      wayland = true;
    };

    sddm = {
      enable = system.greeter == "sddm";
      enableHidpi = true;
      wayland.enable = true;
      background = ./../../../wallpapers/flake.jpg;
    };
  };
  programs = {
    niri.enable = true;
    sway = {
      enable = true;
      package = pkgs.swayfx;
    };
  };
}
