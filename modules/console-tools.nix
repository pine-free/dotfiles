{
  flake.homeModules.console-tools = { pkgs, ... }: {
    programs.ripgrep.enable = true;
    programs.eza.enable = true;
    programs.zoxide.enable = true; 
    home.packages = with pkgs; [
      fd
      sd
      fzf
      bat
      jq
    ];
  };
}
