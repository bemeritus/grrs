{pkgs ? import <nixpkgs> {}}:
pkgs.mkShell rec {
  nativeBuildInputs = with pkgs; [
    pkg-config
    rustc
    cargo
    gcc
    rustfmt
  ];
  buildInputs = with pkgs; [
    clang
    llvmPackages.bintools
  ];

  RUST_SRC_PATH = "${pkgs.rust.packages.stable.rustPlatform.rustLibSrc}";
}
