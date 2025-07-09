{ config, pkgs, lib, ... }:
{
  environment.systemPackages = with pkgs; [
    grim # screenshot functionality
    slurp # screenshot functionality
    wl-clipboard # wl-copy and wl-paste for copy/paste from stdin / stdout
    rofi-wayland # app launcher
    dunst # notification window
    swaybg # walpaper
    swaylock # locker
    sawyidle # idle management
    eww # widget system
  ];

  # Enable the gnome-keyring secrets vault.
  # Will be exposed through DBus to programs willing to store secrets.
  services.gnome.gnome-keyring.enable = true;

  # enable Sway window manager
  programs.sway = {
    enable = true;
    wrapperFeatures.gtk = true;
  };
  programs.uwsm.enable = true;
}
