{ inputs, ... }: {
	home-manager = {
		extraSpecialArgs = {inherit inputs;};
		users."cicada" = {pkgs, ...}: {
			programs.yazi = {
				plugins = with pkgs.yaziPlugins; {
          wl-clipboard = wl-clipboard;
		      rsync = rsync;
					dupes = dupes;
			    ouch = ouch;
					nord = nord;
				  lsar = lsar;
					diff = diff;
					sudo = sudo;
					glow = glow;
					gvfs = gvfs;
					piper = piper;
					mount = mount;
					gitui = gitui;
					chmod = chmod;
					miller = miller;
					yatline = yatline;
					mime-ext = mime-ext;
					compress = compress;
					mediainfo = mediainfo;
					toggle-pane = toggle-pane;
					full-border = full-border;
				};
			};
		};
	};
}
