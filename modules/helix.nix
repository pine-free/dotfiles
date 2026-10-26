{
  flake.homeModules.helix-editor = {pkgs, ...}: {
    programs.helix = {
      enable = true;
      defaultEditor = true;
      settings = {
        theme = "gruvbox";
        editor.line-number = "relative";
        editor.completion-timeout = 100;
        keys.normal = {
          "C-r" = ":rla";
        };
      };
      extraPackages = with pkgs; [
        nil
        nixd
      ];
    };
  };
}
