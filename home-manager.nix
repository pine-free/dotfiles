{home-manager, nixpkgs, self, ...}: {
  flake.homeConfigurations.pinefree = home-manager.lib.homeManagerConfiguration {
      pkgs = import nixpkgs { system = "aarch64-darwin"; };
      modules = [
        self.homeModules.my-home-manager
        {
        home.username = "pinefree";
        home.homeDirectory = "/Users/pinefree";
        home.stateVersion = "26.05";
      }];
    };
}
