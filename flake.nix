{
  description = "My Nixvim config";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";

    nixvim = {
      url = "github:nix-community/nixvim/nixos-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs: {
    nixosModules = {
      nixvim = import ./. inputs;
    };
    homeManagerModules.default = import ./default.nix;
  };
}
