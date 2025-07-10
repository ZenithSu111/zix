{config, pkgs, ...}:
{

  home.packages = with pkgs; [
    obsidian
    google-chrome

    vscode

  ];

}
