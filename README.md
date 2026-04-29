.
├── assets
│   ├── icons
│   │   ├── astolfo.png
│   │   ├── NixOS.png
│   │   ├── nix-snowflake-colours.svg
│   │   ├── nix-snowflake-rainbow.svg
│   │   └── robot.png
│   └── wallpaper
│       ├── 2.png
│       ├── 8hLgnpcNkK.png
│       ├── astolfo.png
│       ├── C28lttsesS.png
│       ├── MBdPfIn6z0.png
│       ├── wallpaper.jpg
│       ├── wwp-01.png
│       ├── wwp-02.png
│       └── xA89owJEcE.jpg
├── flake.lock
├── flake.nix
├── hosts
│   └── asus-fa507nvr
│       ├── configuration.nix
│       ├── hardware
│       │   ├── asus-fa507nvr.nix
│       │   ├── default.nix
│       │   └── nvidia.nix
│       └── hardware-configuration.nix
├── secrets
│   ├── secrets.nix
│   └── secrets.yaml
├── _sources
│   └── generated.nix
├── system
│   ├── core
│   │   ├── boot.nix
│   │   ├── default.nix
│   │   ├── linux-kernel.nix
│   │   ├── locale.nix
│   │   ├── mime.nix
│   │   ├── network.nix
│   │   ├── nix.nix
│   │   ├── nixpkgs.nix
│   │   ├── sessionVariables.nix
│   │   ├── sops.nix
│   │   ├── users.nix
│   │   ├── virtualisation.nix
│   │   └── zram.nix
│   ├── default.nix
│   ├── home
│   │   └── home-manager.nix
│   ├── packages
│   │   ├── audio.nix
│   │   ├── bluetooth.nix
│   │   ├── default.nix
│   │   ├── desktop.nix
│   │   ├── fonts.nix
│   │   ├── portals.nix
│   │   └── programs.nix
│   ├── programs
│   │   ├── appimage.nix
│   │   └── default.nix
│   ├── security
│   │   ├── default.nix
│   │   └── polkit.nix
│   └── services
│       ├── default.nix
│       ├── openssh.nix
│       ├── udisks2.nix
│       └── xserver.nix
└── users
    ├── cicada
    │   ├── default.nix
    │   ├── packages
    │   │   ├── default.nix
    │   │   ├── mimeo
    │   │   │   ├── associations.txt
    │   │   │   └── default.nix
    │   │   └── yazi
    │   │       ├── default.nix
    │   │       ├── initLua.nix
    │   │       ├── keymap.nix
    │   │       ├── plugins.nix
    │   │       ├── settings.nix
    │   │       └── theme.nix
    │   ├── programs
    │   │   ├── btop
    │   │   │   ├── config
    │   │   │   │   ├── btop.conf
    │   │   │   │   └── themes
    │   │   │   └── default.nix
    │   │   ├── dconf.nix
    │   │   ├── default.nix
    │   │   ├── dolphin.nix
    │   │   ├── git.nix
    │   │   ├── gnupg.nix
    │   │   ├── llama-cpp.nix
    │   │   ├── mtr.nix
    │   │   ├── neovim.nix
    │   │   ├── nix-ld.nix
    │   │   ├── obs-studio.nix
    │   │   ├── steam
    │   │   │   └── default.nix
    │   │   └── throne.nix
    │   └── symlinks
    │       ├── default.nix
    │       ├── desktop
    │       │   ├── default.nix
    │       │   ├── fastfetch
    │       │   ├── fuzzel
    │       │   │   └── default.nix
    │       │   ├── hyprlock
    │       │   │   ├── config
    │       │   │   │   └── hyprlock.conf
    │       │   │   └── default.nix
    │       │   ├── kitty
    │       │   │   ├── config
    │       │   │   │   ├── colors-kitty.conf
    │       │   │   │   ├── kitty.conf
    │       │   │   │   ├── theme.conf
    │       │   │   │   └── userprefs.conf
    │       │   │   └── default.nix
    │       │   ├── niri
    │       │   │   ├── config
    │       │   │   │   ├── animations.kdl
    │       │   │   │   ├── binds.kdl
    │       │   │   │   ├── config.kdl
    │       │   │   │   ├── gestures.kdl
    │       │   │   │   ├── input.kdl
    │       │   │   │   ├── layer-rule.kdl
    │       │   │   │   ├── layout.kdl
    │       │   │   │   ├── miscellaneous.kdl
    │       │   │   │   ├── output.kdl
    │       │   │   │   ├── overview.kdl
    │       │   │   │   ├── recent-windows.kdl
    │       │   │   │   └── window-rule.kdl
    │       │   │   ├── default.nix
    │       │   │   └── wallpaper
    │       │   │       ├── 2.png
    │       │   │       ├── 4.jpg
    │       │   │       ├── 8hLgnpcNkK.png
    │       │   │       ├── astolfo.png
    │       │   │       ├── C28lttsesS.png
    │       │   │       ├── MBdPfIn6z0.png
    │       │   │       ├── wwp-01.png
    │       │   │       ├── wwp-02.png
    │       │   │       └── xA89owJEcE.jpg
    │       │   ├── rofi
    │       │   │   ├── config
    │       │   │   └── default.nix
    │       │   ├── swaync
    │       │   │   ├── config
    │       │   │   │   ├── config.json
    │       │   │   │   ├── icons
    │       │   │   │   │   ├── bolt.png
    │       │   │   │   │   ├── brightness-100.png
    │       │   │   │   │   ├── brightness-20.png
    │       │   │   │   │   ├── brightness-40.png
    │       │   │   │   │   ├── brightness-60.png
    │       │   │   │   │   ├── brightness-80.png
    │       │   │   │   │   ├── gamemode.png
    │       │   │   │   │   ├── microphone-mute.png
    │       │   │   │   │   ├── microphone.png
    │       │   │   │   │   ├── music.png
    │       │   │   │   │   ├── palette.png
    │       │   │   │   │   ├── picture.png
    │       │   │   │   │   ├── play.png
    │       │   │   │   │   ├── timer.png
    │       │   │   │   │   ├── volume-high.png
    │       │   │   │   │   ├── volume-low.png
    │       │   │   │   │   ├── volume-mid.png
    │       │   │   │   │   ├── volume-mute.png
    │       │   │   │   │   └── wand.png
    │       │   │   │   ├── style.css
    │       │   │   │   └── themes
    │       │   │   │       └── nova-dark
    │       │   │   │           ├── central_control.css
    │       │   │   │           └── notifications.css
    │       │   │   └── default.nix
    │       │   ├── swayosd
    │       │   │   ├── config
    │       │   │   │   └── style.css
    │       │   │   └── default.nix
    │       │   ├── waybar
    │       │   │   ├── config
    │       │   │   │   ├── colors
    │       │   │   │   │   ├── colors.css
    │       │   │   │   │   └── colors.dark.css
    │       │   │   │   ├── config.jsonc
    │       │   │   │   ├── modules
    │       │   │   │   │   ├── center.jsonc
    │       │   │   │   │   ├── left.jsonc
    │       │   │   │   │   └── right.jsonc
    │       │   │   │   ├── modules-position.jsonc
    │       │   │   │   ├── scripts
    │       │   │   │   │   ├── backlight
    │       │   │   │   │   ├── bluetooth
    │       │   │   │   │   ├── network
    │       │   │   │   │   ├── power
    │       │   │   │   │   ├── update
    │       │   │   │   │   └── volume
    │       │   │   │   └── style.css
    │       │   │   └── default.nix
    │       │   ├── wlogout
    │       │   │   ├── config
    │       │   │   │   ├── icons
    │       │   │   │   │   ├── lock.png
    │       │   │   │   │   ├── logout.png
    │       │   │   │   │   ├── pause.png
    │       │   │   │   │   ├── power.png
    │       │   │   │   │   ├── restart.png
    │       │   │   │   │   └── sleep.png
    │       │   │   │   ├── layout
    │       │   │   │   └── style.css
    │       │   │   └── default.nix
    │       │   └── wofi
    │       │       ├── config
    │       │       │   ├── config
    │       │       │   ├── style.css
    │       │       │   ├── style-wallpaper.css
    │       │       │   ├── style-waybar.css
    │       │       │   ├── wallpaper
    │       │       │   └── waybar
    │       │       └── default.nix
    │       └── local
    │           ├── bin
    │           │   └── default.nix
    │           ├── default.nix
    │           ├── factorio.nix
    │           └── share
    │               └── default.nix
    └── cicada.nix

59 directories, 173 files
