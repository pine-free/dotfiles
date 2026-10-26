{
  description = "Example nix-darwin system flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin.url = "github:nix-darwin/nix-darwin/master";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
    flake-parts.url = "github:hercules-ci/flake-parts";
    easy-hosts.url = "github:tgirlcloud/easy-hosts";
    home-manager.url = "github:nix-community/home-manager";
  };

  outputs = inputs@{ flake-parts, self, home-manager, nixpkgs, ... }:
  flake-parts.lib.mkFlake { inherit inputs; } ({flake-parts-lib, ...}: {
    imports = [
      inputs.easy-hosts.flakeModule
      inputs.home-manager.flakeModules.home-manager
      ./modules/homebrew.nix
      ./modules/home-manager.nix
      ./modules/zsh.nix
      ./modules/yazi.nix
      ./modules/helix.nix
      ./modules/jujutsu.nix
      ./modules/zoxide.nix
      ./configs/macbook-host-config.nix
      (flake-parts-lib.importApply ./configs/macbook-home-config.nix {inherit home-manager nixpkgs self; })
    ];
  });
}
