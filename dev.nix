{
  pkgs ? import <nixpkgs> { config.allowUnfree = true; },
}:

pkgs.mkShell {
  buildInputs = [
    pkgs.code-cursor
  ];
  shellHook = ''
    cursor . &
  '';
}
