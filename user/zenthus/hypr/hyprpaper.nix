{...}:
{
  programs.hyprpaper = {
    enable = true;
    settings = {
      ipc = "off";    #要不要集成轉場
      splash = false; # 轉場效果
      splash_offset = 2.0;
      
      preload = [ "../wallpapers/Lofi-Computer.png" ];
      wallpapaer = [
        "DP-1, ../wallpapers/Lofi-Computer.png"
        "DP-2, ../wallpapers/Lofi-Computer.png"
      ];
    };

  };
}