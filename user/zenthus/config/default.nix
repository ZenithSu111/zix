{ config, pkgs, ... }:

let
  rofiConfigPath = builtins.toString ./rofi;
  waybarConfigPath = builtins.toString ./waybar;
in
{
  home.file.".config/rofi" = {
    source = rofiConfigPath;
  };
  home.file.".config/waybar" = {
    source = waybarConfigPath;
  };
}
