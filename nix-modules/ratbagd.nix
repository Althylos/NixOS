{pkgs, ...}:{
    #control mouse
    services.ratbagd.enable = true;
    environment.systemPackages = with pkgs; [
    libratbag
    ];
}
