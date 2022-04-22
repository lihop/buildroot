{ pkgs ? import <nixpkgs> {} }:

(pkgs.buildFHSUserEnv {
  name = "buildroot-env";
  targetPkgs = pkgs: (with pkgs; [
    bc
    elfutils.dev
    file
    gcc
    openssl.dev
    gnumake
    ncurses.dev
    pkgconfig
  ]);
}).env
