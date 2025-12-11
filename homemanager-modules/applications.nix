{pkgs, ...} : {
    home.packages = with pkgs; [
        discord
        hardinfo2 #hardware information
        keepassxc
        haruna #video player
        vlc
        vscode-fhs
        qbittorrent
        piper #configure mouse
        flameshot #screenshot tool
        openvpn
        freetube
        heroic #games launcher for GOG, epic and Amazon
        vim
        google-chrome
        libreoffice
        kdePackages.kalk #calculator
        kdePackages.kpat #solitaire
        kdePackages.picmi #nonogram game
        prismlauncher
        file-roller
    ];
}
