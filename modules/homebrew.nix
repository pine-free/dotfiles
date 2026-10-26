{
  flake.darwinModules.homebrew = {
    homebrew = {
      enable = true;
      enableZshIntegration = true;
      casks = [
        "obsidian"
        "telegram-desktop"
      ];
    };
  };
}
