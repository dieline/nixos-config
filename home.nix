{ config, pkgs, inputs, lib, ...}:

{
  home.username = "po1nt";
  home.homeDirectory = "/home/po1nt";  
  home.stateVersion = "25.05";

  programs.home-manager.enable = true;

  imports = [
    inputs.dankMaterialShell.homeModules.dankMaterialShell.default
  ];
  
  programs.dankMaterialShell.enable = true;
  
  programs.vscode = {
    enable = true;
    extensions = with pkgs.vscode-extensions; [
      vscodevim.vim
      yzhang.markdown-all-in-one
      ms-vscode.cpptools
    ];
    package = pkgs.vscode.fhsWithPackages (ps: with ps; [ libgcc ]); 
  };
}
