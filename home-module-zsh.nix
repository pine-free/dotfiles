{
  flake.homeModules.zsh = {pkgs, ...}: {
    programs.zsh.enable = true;
    home.shell.enableZshIntegration = true;
  };
}
