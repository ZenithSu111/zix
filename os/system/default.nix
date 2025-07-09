{
  imports = [
    ./audio.nix
    ./bootloader.nix
    ./config.nix
    ./driver.nix
    ./font.nix
    ./hardware-configuration.nix
    ./network.nix
    ./nix.nix
    ./timeZone.nix

    ../wm/hypr
  ];
}
