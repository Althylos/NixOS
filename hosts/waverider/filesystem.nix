{
boot.supportedFilesystems = ["ntfs"];
  fileSystems = {
    "/mnt/Everything" = {
      device = "/dev/disk/by-uuid/5C18C82218C7F8D2";
      fsType = "ntfs-3g";
      options = [
        "rw"
        "uid=1000"
        "gid=1000"
        "auto"
      ];
    };

    "/mnt/Windows" = {
      device = "/dev/disk/by-uuid/F07AA0CF7AA0943E";
      fsType = "ntfs-3g";
      options = [
        "rw"
        "uid=1000"
        "gid=1000"
        "auto"
      ];
    };
  };
}
