{ pkgs ? import <nixpkgs> {} }:

(pkgs.buildFHSUserEnv {
  name = "buildroot-env";
  targetPkgs = pkgs: (with pkgs; [
    bc
    file
    gcc
    gnumake
    ncurses.dev
    pkgconfig
  ]);
}).env
