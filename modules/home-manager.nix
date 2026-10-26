{
  flake.homeModules.my-home-manager = {pkgs, ...}: {
    programs.home-manager.enable = true;
    programs.nh.enable = true;
  };
}
