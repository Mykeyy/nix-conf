{
  desktop = {
    plasma = {
      enable = true;
    };
  };
  development = {
    git = {
      defaultBranch = "main";
      email = "mykey@mykeyy.tech";
      types = [
        "GitLab"
        "GitHub"
      ];
      username = "mykeyy";
    };
  };
  system = {
    hardware-module = ./hardware-configuration.nix;
    dock = {
      autoHideDelay = 0.45;
      autohide = true;
      orientation = "right";
    };
    graphics = {
      blacklists = [
        "nouveau"
      ];
      wanted = [
        "modesetting"
        "intel"
      ];

      # nvidia.prime = {
      #   intelBusId = "PCI:0:2:0";
      #   nvidiaBusId = "PCI:1:0:0";
      # };
    };
    greeter = "gdm";
    hostname = "Mykey";
    interfaces = { };
    kernelParams = [
      "intel_iommu=on"
      "iommu=pt"
      
    ];
    locale = "en_AU.UTF-8";
    networking = {
      dhcpEnabled = true;
      firewallEnabled = false;
      networkmanager = true;
    };
    services = {
      mongodb = {
        enable = false;
      };
      ssh = {
        enable = true;
      };
    };
    timezone = "Asia/Manila";
  };
  user = {
    displayName = "Mykey";
    initialPassword = "123456";
    username = "mykeyy";
  };
}
