{
  flake.homeModules.zsh = {pkgs, ...}: {
    programs.zsh = {
        enable = true;
        oh-my-zsh = {
            enable = true;
            theme = "agnoster";
        };
    };
    home.shell.enableZshIntegration = true;
  };
}
