{ 
      networking.hostName = "adalind";
    
      networking.bonds.bond0 = {
        driverOptions.mode = "balance-tlb";
        interfaces = [
          "enp0s20f0" "enp0s20f1"
        ];
      };
    
      networking.interfaces.bond0 = {
        useDHCP = true;

        ip4 = [
          
          {
            address = "147.75.80.235";
            prefixLength = 31;
          }
    

          {
            address = "10.80.108.1";
            prefixLength = 31;
          }
    
        ];

        ip6 = [
          
          {
            address = "2604:1380:2000:a800::1";
            prefixLength = 127;
          }
    
        ];
      };
    
      users.users.root.openssh.authorizedKeys.keys = [
        "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDOySJ7SAmh+3CBK4fagwkY9PsF6xF+9msMRoQN6JalpauQANALVsVDjC3heFH6Lc/tjLrhQ46oVO3xMFGVKxNe81gaWhvWPxytfH5V8FP52GWEo5HwwMd+VoEyJIYYbj10jwkuzutr9fF0qlp0nhR1IaTKnxJFxV8tUkpiC3a9Qf4yrNy7Ft6DMwyiZSh/mEx+S4LuMqayb93do7+ddlSAyb70NQrLv7H2IRA+qkAzPhZe80o3FqKRvXayH5GSSuYLFfEPFgy0guKAA7P2ICjddLJ+l8BAdTlF8ADY1Z97DvCAgG6CT4cnRzv+cSM+Uvd+ZTxBY6Z+U27kO2LB7UBhVLzrWHSRbv5KWaruFzhOD3E64y3+7XzUg0DpoeS2QVahYc3iF4FvpVfLLPX3F4aev/83Z05G6nEn8lDb1XPAV0KRwo0gB4cCknC6MurnIzxgAeElin9DL5KgVMgVr5jIgBhx01Z9VEVNs5UcMDrA2mXHenY0uAnNk+iWeKZdzxxet50gQuebJ5Q3jHCADS6WZZsBdjxTDiLNvBVo1OiaZ4/tubzVZdrmCkPZDyPUO04Gz7rqXdVFiqzCJgVbcv2gX1qe8UthlRmdblX+l2fY4gvAOGNchVG1cMmvuA5i27td0PqDh6I7kQPvqKQ3QkCI012hwW9ca5S3HGtQDgqSZQ== cardno:000607309598
"
    

        "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDOySJ7SAmh+3CBK4fagwkY9PsF6xF+9msMRoQN6JalpauQANALVsVDjC3heFH6Lc/tjLrhQ46oVO3xMFGVKxNe81gaWhvWPxytfH5V8FP52GWEo5HwwMd+VoEyJIYYbj10jwkuzutr9fF0qlp0nhR1IaTKnxJFxV8tUkpiC3a9Qf4yrNy7Ft6DMwyiZSh/mEx+S4LuMqayb93do7+ddlSAyb70NQrLv7H2IRA+qkAzPhZe80o3FqKRvXayH5GSSuYLFfEPFgy0guKAA7P2ICjddLJ+l8BAdTlF8ADY1Z97DvCAgG6CT4cnRzv+cSM+Uvd+ZTxBY6Z+U27kO2LB7UBhVLzrWHSRbv5KWaruFzhOD3E64y3+7XzUg0DpoeS2QVahYc3iF4FvpVfLLPX3F4aev/83Z05G6nEn8lDb1XPAV0KRwo0gB4cCknC6MurnIzxgAeElin9DL5KgVMgVr5jIgBhx01Z9VEVNs5UcMDrA2mXHenY0uAnNk+iWeKZdzxxet50gQuebJ5Q3jHCADS6WZZsBdjxTDiLNvBVo1OiaZ4/tubzVZdrmCkPZDyPUO04Gz7rqXdVFiqzCJgVbcv2gX1qe8UthlRmdblX+l2fY4gvAOGNchVG1cMmvuA5i27td0PqDh6I7kQPvqKQ3QkCI012hwW9ca5S3HGtQDgqSZQ== cardno:000607309598
"
    
      ];
     }
