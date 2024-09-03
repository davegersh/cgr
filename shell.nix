{ pkgs ? import <nixpkgs> { } }:

pkgs.mkShell rec {
  nativeBuildInputs = with pkgs; [
    cargo # rust build tool
    rustc # rust compiler
    python312 # python 3.12
  ];

  shellHook = ''
    python -m venv ./.venv
    source ./.venv/bin/activate
    pip install maturin
  '';
}
