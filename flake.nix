{
  description = "dbvis derivation flake for nixpkgs";

  inputs.nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
  {
    packages.${system}.default = pkgs.callPackage ./dbvis { inherit pkgs; inherit system; };
  };
}
