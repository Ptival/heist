{ nixpkgs ? import <nixpkgs> {}, compiler }:
let xmlhtml = (import ../xmlhtml/default.nix { inherit nixpkgs compiler; }); in
nixpkgs.pkgs.haskell.packages.${compiler}.callPackage ./heist.nix { inherit xmlhtml; }

