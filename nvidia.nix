{ pkgs, config, lib, inputs, ... }: {

  hardware = {
    graphics = {
      # For 32 bit applications
      # enable32Bit = true;
      enable = true;
    };

    nvidia = {
      # Modesetting is required.
      modesetting.enable = true;
      powerManagement.enable = true;
      powerManagement.finegrained = false;
      open = true;

      prime = {
        intelBusId = "PCI:0:2:0";
        nvidiaBusId = "PCI:1:0:0";
        sync.enable = true;
      };

      nvidiaSettings = true;

      package = config.boot.kernelPackages.nvidiaPackages.mkDriver {
        version = "570.153.02";
        sha256_64bit = "sha256-FIiG5PaVdvqPpnFA5uXdblH5Cy7HSmXxp6czTfpd4bY=";
        sha256_aarch64 = lib.fakeHash;
        openSha256 = "sha256-2DpY3rgQjYFuPfTY4U/5TcrvNqsWWnsOSX0f2TfVgTs=";
        settingsSha256 = "sha256-5m6caud68Owy4WNqxlIQPXgEmbTe4kZV2vZyTWHWe+M=";
        persistencedSha256 = lib.fakeHash;
      };
    };
  };

  services.xserver.videoDrivers = [ "nvidia" ];

}
