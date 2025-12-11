{ pkgs, ... }:

{
  services.openvpn.servers = {
    miceik = {
      config = '' config /home/po1nt/openvpn/miceik.ovpn '';
      updateResolvConf = true;
    };
  };
}
