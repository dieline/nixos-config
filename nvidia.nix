{ pkgs, config, lib, inputs, ... }: {

  boot.blacklistedKernelModules = [ "nvidia-drm" ];

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
    };
  };

  services.xserver.videoDrivers = [ "nvidia" ];

}
