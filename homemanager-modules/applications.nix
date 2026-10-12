{pkgs, pkgs-stable, ...} : {
    home.packages = with pkgs; [
        pkgs.discord
        pkgs.hardinfo2 #hardware information
        pkgs.keepassxc
        pkgs.haruna #video player
        pkgs.vlc
        pkgs.vscode-fhs
        pkgs.qbittorrent
        pkgs.piper #configure mouse
        pkgs.flameshot #screenshot tool
        pkgs.openvpn
        pkgs.freetube
        pkgs.heroic #games launcher for GOG, epic and Amazon
        pkgs.vim
        pkgs.google-chrome
        pkgs.libreoffice
        pkgs.kdePackages.kalk #calculator
        pkgs.kdePackages.kpat #solitaire
        pkgs.kdePackages.picmi #nonogram game
        pkgs.prismlauncher
        pkgs.file-roller
        pkgs.signal-desktop
        pkgs.mediawriter
        pkgs.p7zip #7zip opener
        pkgs.filezilla #ftp client
        pkgs-stable.lutris
        pkgs-stable.bottles
        pkgs.krita #painting
        pkgs.kdePackages.ghostwriter #writing tool
    ];
}
