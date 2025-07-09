{ config, pkgs, ... }:

let
  rofiConfigPath = builtins.toString ./config/rofi;
in
{
  home.file.".config/rofi" = {
    source = rofiConfigPath;
  };
}
