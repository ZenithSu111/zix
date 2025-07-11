{...}:
{
  programs.ghostty = {
   enable = true;
   enableZshIntegration = true;
   settings = {
    font-size = 16;
    font-family = "ZedMono Nerd Font Mono";
    theme = "/home/zenthus/.config/ghostty/themes/gruvbox-material-soft-dark";

   };
   themes = {
    gruvbox-material-soft-dark = {
    background = "#32302f";
    cursor-color = "#d4be98";
    foreground = "#d4be98";
    palette = [
      "0=#252423"
      "1=#ea6962"
      "2=#a9b665"
      "3=#d8a657"
      "4=#7daea3"
      "5=#d3869b"
      "6=#89b482"
      "7=#d4be98"
      "8=#32302f"
      "9=#ea6962"
      "10=#a9b665"
      "11=#d8a657"
      "12=#7daea3"
      "13=#d3869b"
      "14=#89b482"
      "15=#d4be98"
    ];
    selection-background = "#45403d";
    selection-foreground = "#d4be98";
    };
   };
  };
}
