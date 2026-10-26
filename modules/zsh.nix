{
  flake.homeModules.zsh = {pkgs, ...}: {
    programs.zsh = {
        enable = true;
        oh-my-zsh = {
            enable = true;
            theme = "apple";
        };
    };
    home.shell.enableZshIntegration = true;
  };
}
