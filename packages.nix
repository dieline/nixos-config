{ inputs, config, pkgs, ... }:

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
    lzip
    curl
    jmtpfs
    nodejs
    kdePackages.qt6ct
    neofetch
    waydroid-helper

    nicotine-plus
    termusic
    sptlrx
    lrcget
    youtube-music

    qbittorrent
    discord
    steam
    ayugram-desktop
    krita
    libreoffice
    jetbrains.pycharm-community

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
