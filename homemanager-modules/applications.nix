{pkgs, ...} : {
    home.packages = with pkgs; [
        discord
        hardinfo2 #hardware information
        keepassxc
        haruna #anime video player
        vlc
        vscode-fhs
        qbittorrent
        piper #configure mouse
        flameshot #screenshot tool
        openvpn
        freetube
        heroic #games launcher for GOG, epic and Amazon
        vim
    ];
}
