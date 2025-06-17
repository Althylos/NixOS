{pkgs, ...} : {
    home.packages = with pkgs; [
        discord
        hardinfo2 #hardware information
        keepass
        haruna #anime video player
        vlc
        vscode-fhs
        qbittorrent
        piper #configure mouse
        flameshot #screenshot tool
    ];
}
