{
  description = "My Nixvim config";

  inputs = {
    nixvim.url = "github:nix-community/nixvim/nixos-26.05";
  };

  outputs = inputs: {
    nixosModules = {
      nixvim = import ./. inputs;
    };
    homeManagerModules.default = import ./. inputs;
  };
}
