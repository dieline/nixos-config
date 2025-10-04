{ cobfig, pkgs, ... }:

{
  systemd.services.zapret_discord_youtube = {
    description = "ZapretService";
    
    after = [ "network-online.target" "sysinit.target" ];
    wants = [ "network-online.target" ];

    serviceConfig = {
      Environment = "PATH=/run/current-system/sw/bin:$BASH";
      Type = "simple";
      WorkingDirectory = "/home/po1nt/zapret-discord-youtube-linux";
      User = "root";
      ExecStart = "/run/current-system/sw/bin/bash /home/po1nt/zapret-discord-youtube-linux/main_script.sh -nointeractive";
      ExecStop = "/run/current-system/sw/bin/bash /home/po1nt/zapret-discord-youtube-linux/stop_and_clean_nft.sh";
      ExecStopPost = "/usr/bin/env echo 'Cepвис запущен'";
      PIDFile = "/run/zapret.pid";
    };

    wantedBy = [ "multi-user.target" ];
  };

  systemd.services.zapret_discord_youtube.enable = true;
}
