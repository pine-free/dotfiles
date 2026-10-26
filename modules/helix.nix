{
  flake.homeModules.helix-editor = {pkgs, ...}: {
    programs.helix = {
      enable = true;
      defaultEditor = true;
      settings = {
        theme = "gruvbox";
        editor.line-number = "relative";
      };
      extraPackages = with pkgs; [
        nil
      ];
    };
  };
}
