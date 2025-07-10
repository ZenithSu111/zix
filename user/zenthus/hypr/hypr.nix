{...}:
{
  wayland.windowManager.hyprland = {
    enable = true;
    #xwayland.enable = true;
    plugins =[
    ];
    systemd = {
      enable = false;
      variables = ["--all"];
    };
    settings = {
      "$mainMod" = "SUPER";
      "$launcher" = "pkill rofi || rofi -show drun -modi drun,filebrowser,run,window";
      "$term" = "ghostty";
      "$fileManager" = "nemo";

      exec-once =[
        "hyprpaper"
        "waybar"
      ];

      bind = [
        "$mainMod, Return, exec, $term"
        "$mainMod, Q, killactive"
        "$mainMod, A, exec, $launcher"
        "$mainMod, E, exec, $fileManager"
        "$mainMod, R, exec, hyprctl reload"

        # Move focus with mainMod + arrow keys
        "$mainMod, h, movefocus, l"
        "$mainMod, l, movefocus, r"
        "$mainMod, k, movefocus, u"
        "$mainMod, j, movefocus, d"

        # Move windows plcament
        "$mainMod SHIFT, l, movewindow, r"
        "$mainMod SHIFT, h, movewindow, l"
        "$mainMod SHIFT, j, movewindow, d"
        "$mainMod SHIFT, k, movewindow, u"

        "ALT, return, fullscreen"

        # Switch workspaces with mainMod + [0-9]
        "$mainMod, 1, workspace, 1"
        "$mainMod, 2, workspace, 2"
        "$mainMod, 3, workspace, 3"
        "$mainMod, 4, workspace, 4"
        "$mainMod, 5, workspace, 5"
        "$mainMod, 6, workspace, 6"
        "$mainMod, 7, workspace, 7"
        "$mainMod, 8, workspace, 8"
        "$mainMod, 9, workspace, 9"
        "$mainMod, 0, workspace, 10"


      ];
    };
  };

}
