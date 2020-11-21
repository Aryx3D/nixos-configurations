{ pkgs, ... }: {
  networking.useDHCP = false;

  # Bridge setup
  networking.interfaces.br0 = {
    macAddress= "a8:a1:59:35:68:2d";

    ipv4 = {
      addresses = [
        { # Server main IPv4 address
          address = "135.181.74.221";
          prefixLength = 24; }

          # Do not claim the subnet addresses
        # { # VM Subnet
        #   address = "95.217.103.168";
        #   prefixLength = 29; }
      ];

      routes = [
        { # Default IPv4 gateway route
          address = "0.0.0.0";
          prefixLength = 0;
          via = "135.181.74.193"; }

        { # VM Subnet
          address = "95.217.103.168";
          prefixLength = 29;
          options.scope = "link"; }
      ];
    };

    ipv6 = {
      addresses = [{
        address = "2a01:4f9:4b:12e2::2";
        prefixLength = 64;
      }];

      # Default IPv6 route
      routes = [{
        address = "::";
        prefixLength = 0;
        via = "fe80::1";
      }];
    };
  };

  networking = {
    nameservers = [ "8.8.8.8" "8.8.4.4" ];
    hostName = "stargazer";
    domain = "mkaito.net";

    # Enslave the main NIC
    bridges.br0.interfaces = [ "enp35s0" ];
  };

  # Options for routing
  boot.kernel.sysctl = {
    "net.ipv6.conf.all.forwarding" = "1";
    "net.ipv4.ip_forward" = "1";

    # Disable netfilter for bridges, for performance and security
    # Note that this means bridge-routed frames do not go through iptables
    # https://bugzilla.redhat.com/show_bug.cgi?id=512206#c0
    "net.bridge.bridge-nf-call-ip6tables" = "0";
    "net.bridge.bridge-nf-call-iptables" = "0";
    "net.bridge.bridge-nf-call-arptables" = "0";
  };

  networking.firewall = {
    logRefusedConnections = false;
  };
}
