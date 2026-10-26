{home-manager, nixpkgs, self, ...}:
let
  homePath = "/Users/pinefree";
  flakePath = "${homePath}/dotfiles";
  in {
  flake.homeConfigurations.pinefree = home-manager.lib.homeManagerConfiguration {
      pkgs = import nixpkgs { system = "aarch64-darwin"; };
      modules = [
        {
        home.username = "pinefree";
        home.homeDirectory = homePath;
        home.stateVersion = "26.05";

        programs.nh = {
          darwinFlake = flakePath;
          homeFlake = flakePath;
        };
      }] ++ (with self.homeModules; [
        my-home-manager
        zsh
        helix-editor
        yazi-fm
        jujutsu
        tealdeer
        zellij
        console-tools
    ]);
    };
}
