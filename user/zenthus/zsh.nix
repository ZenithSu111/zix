{config, ...}:
{
  programs.zsh = {
      enable = true;

      autosuggestion = {
          enable = true;
      };
      oh-my-zsh = {
          enable = true;
      };
      syntaxHighlighting = {
          enable = true;
      };
  };
  programs.direnv = {
    enable = true;
    enableZshIntegration = true;
    nix-direnv.enable = true;
  };
}
