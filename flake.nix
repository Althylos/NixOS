{
  description = "waverider config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-24.11";

      home-manager = {
        url = "github:nix-community/home-manager";
        inputs.nixpkgs.follows = "nixpkgs";
      };

      spicetify-nix = {
        url = "github:Gerg-L/spicetify-nix";
      };

      tidal-overlay.url = "github:mitchmindtree/tidalcycles.nix";
  };



  outputs = {
    self,
    nixpkgs,
    nixpkgs-stable,
    home-manager,
    spicetify-nix,
    tidal-overlay,
    }@inputs:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
      inherit system;
        overlays = [
          tidal-overlay.overlays.default
        ];
        config = {
          allowUnfree = true;
        };
      };
    in
    {
      devShells.${system}.tidal = tidal-overlay.devShells.${system}.tidal;
      nixosConfigurations.waverider = nixpkgs.lib.nixosSystem {
        specialArgs = {
          pkgs-stable = import nixpkgs-stable {
            inherit system;
            config.allowUnfree = true;
          };
          inherit inputs system pkgs;
        };

        modules = [
          ./hosts/waverider/configuration.nix
        ];
      };
      homeConfigurations.al = home-manager.lib.homeManagerConfiguration {
        pkgs = import nixpkgs {
          inherit system;
          config.allowUnfree = true;
        };
        modules = [ ./users/al/home.nix ];
        extraSpecialArgs = { inherit inputs; };
      };


  };
}
