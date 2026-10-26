{
  flake.homeModules.console-tools = { pkgs, ... }: {
    programs.ripgrep.enable = true;
    home.packages = with pkgs; [
      fd
      sd
      fzf
      bat
    ];
  };
}
