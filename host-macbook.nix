{
  easy-hosts.hosts.pinefrees-MacBook-Air = {
    class = "darwin";
    modules = [
      {
        # Necessary for using flakes on this system.
        nix.settings.experimental-features = "nix-command flakes";

        # Enable alternative shell support in nix-darwin.
        # programs.fish.enable = true;

        # Set Git commit hash for darwin-version.
        # system.configurationRevision = self.rev or self.dirtyRev or null;
        system.configurationRevision = null; # TODO figure out how to do the above

        # Used for backwards compatibility, please read the changelog before changing.
        # $ darwin-rebuild changelog
        system.stateVersion = 6;

        # The platform the configuration will be used on.
        nixpkgs.hostPlatform = "aarch64-darwin";
      }
    ];
  };
}
