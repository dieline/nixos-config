{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    vim
    wget
    git
    nftables
    pciutils
    gcc
    gdb
    htop
    lshw
    curl
    jmtpfs
    
    kdePackages.qt6ct

    v2rayn
    wireguard-tools

    qbittorrent
    nicotine-plus
    termusic
    discord
    steam
    ayugram-desktop
    krita

    appimage-run
    protonup-qt
    lutris
    wineWowPackages.stable
    winetricks
    xwayland-satellite
    home-manager

    ghostty
    nautilus
    pcmanfm
  ];
}
