{ pkgs }:

pkgs.writeShellScriptBin "confedit" ''
  cd /etc/nixos
  vim ./
''
