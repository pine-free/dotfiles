{
  flake.homeModules.helix-editor = {pkgs, ...}: {
    programs.helix = {
      enable = true;
      defaultEditor = true;
      settings = {
        theme = "gruvbox";
        editor.line-number = "relative";
        keys.normal = {
          "C-r" = ":rla";
        };
      };
      extraPackages = with pkgs; [
        nil
      ];
    };
  };
}
