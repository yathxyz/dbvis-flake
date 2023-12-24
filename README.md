## dbvis-flake

Single flake for running the DBVisualizer program in an ephemeral nix shell

### How to run

Assuming that nix is installed, make sure that nix flakes are enabled as well.


``` sh
nix shell nixpkgs#openjdk17 -c nix shell github:yathxyz/dbvis-flake -c dbvisgui.sh
``` 

