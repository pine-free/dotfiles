{
  flake.homeModules.devenv = {pkgs, ...}: {
    programs.devenv.enable = true;
  };
}
