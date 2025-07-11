{...}:
{
  services.hyprpaper = {
    enable = true;
    settings = {
      ipc = "off";    #要不要集成轉場
      splash = false; # 轉場效果
      splash_offset = 2.0;
      
      preload = [ "/home/zenthus/zix/wallpapers/Lofi-Computer.png" ];
      wallpaper = [
        "DP-1, /home/zenthus/zix/wallpapers/Lofi-Computer.png"
        "DP-2, /home/zenthus/zix/wallpapers/Lofi-Computer.png"
      ];
    };

  };
}