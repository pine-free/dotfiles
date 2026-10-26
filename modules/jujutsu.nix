{
  flake.homeModules.jujutsu = {pkgs, ...}: {
    programs.jujutsu.enable = true;
  };
}
