{
  desktop = {
    plasma = {
      enable = true;
    };
  };
  development = {
    git = {
      defaultBranch = "main";
      email = "mykey@mykey.tech";
      types = [
        "GitHub"
      ];
      username = "mykeyy";
    };
  };
  system = {
    hardware-module = ./hardware-configuration.nix;
    graphics = {
      blacklists = [
        "amdgpu"
        "nouveau"
      ];
      wanted = [
        "nvidia"
      ];

      nvidia.prime = {
        nvidiaBusId = "PCI:1:0:0";
        intelBusId = "PCI:0:2:0";
      };
    };
    greeter = "sddm";
    hostname = "Mykey";
    interfaces = { };
    kernelParams = [ "intel_iommu=on" "iommu=pt"  ];
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
    timezone = "Asia/Manila";
  };
  user = {
    displayName = "Mykey";
    initialPassword = "123456";
    username = "mykey";
  };
}
