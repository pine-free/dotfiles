{
  flake.homeModules.zellij = { pkgs, ... }: {
    programs.zellij = {
      enable = true;
      settings = {
        default_mode = "locked";
        show_startup_tips = false;
        keybinds._children = [
          {
            shared_except = {
              _args = [
                "locked"
                "entersearch"
                "renametab"
                "renamepane"
              ];
              _children = [
                {
                  bind = {
                    _args = [ "esc" ];
                    _children = [ { SwitchToMode._args = [ "locked" ]; } ];
                  };
                }
              ];
            };
          }
        ];
      };
    };
  };
}
