{
  inputs.nixpkgs.url = "nixpkgs/nixos-20.09";

  outputs = { self, nixpkgs }:
  let
    pkgs = nixpkgs.legacyPackages.x86_64-linux;
  in {
    defaultPackage.x86_64-linux = pkgs.stdenv.mkDerivation {
      name      = "fizzbuzz";
      version   = "git";
      src       = ./.;
      makeFlags = [ "PREFIX=${placeholder "out"}" ];
    };
  };
}
