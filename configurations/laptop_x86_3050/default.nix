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
        "i"
        "amdgpu"
      ];
      wanted = [
        "modesetting"
        "nvidia"
        "nouveau"
  "
      ];

      nvidia.prime = {
        nvidiaBusId = "PCI:1:0:0";
        intelBusId = "PCI:0:2:0";
      };
    };
    greeter = "gdm";
    hostname = "NixOS";
    interfaces = { };
    kernelParams = [ "intel_iommu=on" "iommu=pt" "acpi_backlight=video" ];
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
    timezone = "Australia/Sydney";
  };
  user = {
    displayName = "Invra";
    initialPassword = "123456";
    username = "invra";
  };
}
