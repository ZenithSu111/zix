{pkgs, ...}:
{
  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "zh_TW.UTF-8";
    LC_IDENTIFICATION = "zh_TW.UTF-8";
    LC_MEASUREMENT = "zh_TW.UTF-8";
    LC_MONETARY = "zh_TW.UTF-8";
    LC_NAME = "zh_TW.UTF-8";
    LC_NUMERIC = "zh_TW.UTF-8";
    LC_PAPER = "zh_TW.UTF-8";
    LC_TELEPHONE = "zh_TW.UTF-8";
    LC_TIME = "zh_TW.UTF-8";
  };

  # input method
  i18n.inputMethod = {
    enabled = "fcitx5";
    fcitx5 = {
      waylandFrontend = true;
      addons = with pkgs;[
        fcitx5-chewing
        fcitx5-gtk
      ];
    };
  };

  fonts.packages = with pkgs; [
    noto-fonts           # 英文、拉丁字母等
    noto-fonts-cjk       # 繁中、簡中、日文、韓文
    noto-fonts-emoji     # Emoji 字體
  ];

  fonts.fontconfig = {
    enable = true;
    defaultFonts = {
      sansSerif = [ "Noto Sans CJK TC" "Noto Sans" ];
      serif = [ "Noto Serif CJK TC" "Noto Serif" ];
      monospace = [ "Noto Sans Mono CJK TC" "Noto Sans Mono" ];
      emoji = [ "Noto Color Emoji" ];
    };
  };
}
