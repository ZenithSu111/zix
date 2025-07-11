{config, pkgs, ...}:
{

  home.packages = with pkgs; [
    obsidian
    google-chrome

    vscode

    nerd-fonts.jetbrains-mono

  ];

}
