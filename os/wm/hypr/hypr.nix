{inputs, pkgs, ...}: {
  programs.hyprland = {
    enable = true;

    withUWSM = true;
  };
  programs.hyprlock = {
    enable = true;
  };

  services.hypridle.enable = true;

  environment.systemPackages = with pkgs; [
    hyprpaper # wallpaper
    nemo # file manager
    grim # screenshot functionality
    slurp # screenshot functionality
    wl-clipboard # wl-copy and wl-paste for copy/paste from stdin / stdout
    rofi-wayland # app launcher
    dunst # notification window
    eww # widget system
  ];


  # tell Electron/Chromium to run on Wayland
  environment.sessionVariables.NIXOS_OZONE_WL = "1";
}
