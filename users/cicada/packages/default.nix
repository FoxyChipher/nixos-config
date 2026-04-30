{ pkgs, inputs, ... }: {
  imports = [
    ./mimeo/default.nix
    ./yazi/default.nix
  ];
  environment.systemPackages = with pkgs; [
    # ======> INPUTS <======
    inputs.zen-browser.packages.${pkgs.system}.default

    # ======> PKGS <======
    vscode
    vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    wget
    curl
    fastfetch
    zed-editor
    kdePackages.dolphin
    telegram-desktop
    neovim
    htop
    spotify
    obsidian
    qbittorrent
    keepassxc
    inxi
    awww
    btop-cuda
    nvtopPackages.full
    jetbrains-toolbox
    kdePackages.okular
    microsoft-edge
    tor-browser

    playerctl

    # claude-code
    # claude-monitor

    python3
    micro-full
    neovim
    clang-tools
    gcc # компилятор (C/C++)
    gdb # отладка
    cmake # сборка
    ninja # быстрый билд
    gnumake # иногда нужен
    pkg-config # поиск библиоте
    docker

    agenix-cli
    llama-cpp-vulkan

    swaynotificationcenter
    hyprlock
    wlogout

    nixd
    nil
    pywal16
    peaclock
    cava
    waybar
    tree

    mcat

    steam
    steam-run

    mesa-demos        # glxinfo
    vulkan-tools      # vulkaninfo
    mesa              # eglinfo (иногда уже есть, но лучше явно)
    pciutils          # lspci (для inxi)
    inxi              # если хочешь норм вывод

    mimeo
    (mpv.override { yt-dlp = null; })
    imv

    ripgrep
    fd
  ];
}
