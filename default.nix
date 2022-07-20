{ pkgs ? import <nixpkgs> { } }:

{
  pro = pkgs.callPackage ./pro.nix { };
}
