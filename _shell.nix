{ pkgs ? import (fetchTarball https://github.com/nixos/nixpkgs/archive/nixpkgs-unstable.tar.gz) {} }:

pkgs.mkShell {
  buildInputs = [ pkgs.python38 ];
}

# Equivalent to Python code:
# import nix

# def shell(pkgs=None):
#     if not pkgs:
#         pkgs = nix.import(nix.fetchTarball("https://github.com/nixos/nixpkgs/archive/nixpkgs-unstable.tar.gz"))

#     nix.mkShell({"buildInputs": [pkgs.python38]})