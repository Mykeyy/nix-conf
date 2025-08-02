{
  desktop = {
    plasma = {
      enable = true;
    };
  };
  development = {
    git = {
      defaultBranch = "main";
      email = "";
      types = [
        "GitLab"
        "GitHub"
      ];
      username = "";
    };
  };
  system = {
    hardware-module = ./hardware-configuration.nix;
    dock = {
      autoHideDelay = 0.45;
      autohide = true;
      orientation = "right";
    };

    # "amdgpu" "nvidia" "intel"
    graphics = {
      blacklists = [
        ""
      ];
      wanted = [
        "modesetting"
      ];

      # nvidia.prime = {
      #   intelBusId = "PCI:0:2:0";
      #   nvidiaBusId = "PCI:1:0:0";
      # };
    };
    greeter = ""; # gdm, sddm
    hostname = "";
    interfaces = { };
    kernelParams = [
      "intel_iommu=on"
      "iommu=pt"
      "acpi_backlight=video"
    ];
    locale = "en_AU.UTF-8";
    networking = {
      dhcpEnabled = true;
      firewallEnabled = false;
      networkmanager = true;
    };
    services = {
      mongodb = {
        enable = true;
      };
      ssh = {
        enable = true;
      };
    };
    timezone = "";
  };
  user = {
    displayName = "";
    initialPassword = "";
    username = "";
  };
}
