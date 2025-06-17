{ inputs, ... }: {
	imports = [
		../../homemanager-modules/bundle.nix
	];
	home = {
		username = "al";
    homeDirectory = "/home/al";

		stateVersion = "24.11";
  };
  fonts = {
    fontconfig.enable = true;
  };
}
