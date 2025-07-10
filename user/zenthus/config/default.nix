{ config, pkgs, ... }:
{
  home.file.".config/waybar" = {
    source = ./waybar;
    recursive = true;
  };
  home.file.".config/rofi" = {
    source = ./rofi;
    recursive = true;
  };
}
