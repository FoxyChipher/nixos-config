{ config, pkgs, inputs, ... }: {
  xdg.mime.enable = true;
  xdg.mime.defaultApplications = {
    # Папки
    "inode/directory" = [ "org.kde.dolphin.desktop" ];

    # Терминал
    "x-scheme-handler/terminal" = [ "kitty.desktop" ];
    "application/x-terminal-emulator" = [ "kitty.desktop" ];

    # Текст / код
    "text/plain" = [ "code.desktop" ];
    "text/markdown" = [ "code.desktop" ];
    "text/x-script.python" = [ "code.desktop" ];
    "application/json" = [ "code.desktop" ];
    "application/xml" = [ "code.desktop" ];

    # Видео
    "video/mp4" = [ "mpv.desktop" ];
    "video/mkv" = [ "mpv.desktop" ];
    "video/x-matroska" = [ "mpv.desktop" ];
    "video/webm" = [ "mpv.desktop" ];
    "video/avi" = [ "mpv.desktop" ];
    "video/*" = [ "mpv.desktop" ];

    # Изображения
    "image/png" = [ "imv.desktop" ];
    "image/jpeg" = [ "imv.desktop" ];
    "image/gif" = [ "imv.desktop" ];
    "image/webp" = [ "imv.desktop" ];
    "image/svg+xml" = [ "imv.desktop" ];
    "image/*" = [ "imv.desktop" ];

    # Аудио
    "audio/mpeg" = [ "mpv.desktop" ];
    "audio/ogg" = [ "mpv.desktop" ];
    "audio/flac" = [ "mpv.desktop" ];
    "audio/*" = [ "mpv.desktop" ];

    # PDF
    "application/pdf" = [ "org.kde.okular.desktop" ];

    # Архивы
    "application/zip" = [ "org.kde.ark.desktop" ];
    "application/x-tar" = [ "org.kde.ark.desktop" ];
    "application/x-7z-compressed" = [ "org.kde.ark.desktop" ];
    "application/x-rar" = [ "org.kde.ark.desktop" ];

    # Браузер
    "x-scheme-handler/http" = [ "zen.desktop" ];
    "x-scheme-handler/https" = [ "zen.desktop" ];
    "text/html" = [ "zen.desktop" ];
  };
}