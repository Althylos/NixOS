{pkgs, ...}:{
    environment.systemPackages = with pkgs; [
        git-credential-oauth
    ];

    programs.git ={
        enable = true;
        config = {
            credential.helper = "oauth";
        };
    };
}
