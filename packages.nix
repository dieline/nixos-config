{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    vim
    wget
    git
    nftables
    pciutils
    gcc
    htop
    lshw
    curl

    v2rayn
    wireguard-tools

    qbittorrent
    nicotine-plus
    termusic
    discord
    steam
    ayugram-desktop

    appimage-run
    protonup-qt
    xwayland-satellite
    home-manager

    alacritty
    fuzzel
    nautilus
  ];
}
