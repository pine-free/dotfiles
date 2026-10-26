{
  flake.homeModules.tealdeer = {pkgs, ...}: {
    programs.tealdeer.enable = true;
  };
}
