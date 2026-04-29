{ config, pkgs, lib, ... }: {
  environment.systemPackages = with pkgs; [ fuzzel ];
  home-manager = {
    users."cicada" =
      { config, pkgs, lib, ... }: {
        programs.fuzzel = {
          enable = true;
          settings = {
            main = {
              use-bold = false;
              icons-enabled = true;
              password-character = "*";
              match-mode = "fzf";
              keyboard-focus = "exclusive";
              exit-on-keyboard-focus-loss = true;
              enable-mouse = true;
              sort-result = true;
              # match-counter=no             # показывать счетчик совпадений
              # delayed-filter-ms=300        # задержка фильтрации в мс
              # delayed-filter-limit=20000   # лимит элементов для фильтрации
              # show-actions=no              # показывать действия для выбранного элемента
              terminal = "kitty -e"; # командная строка для запуска
              # launch-prefix=<not set>      # префикс для запуска приложений
              # list-executables-in-path=no  # сканировать исполняемые файлы в PATH
              # filter-desktop=no            # фильтровать элементы рабочего стола
              # hide-before-typing=no        # скрывать список до ввода текста
              # fields=filename,name,generic; # поля, отображаемые в списке
              # output=<not set>             # куда выводить результат
              # font = lib.mkForce "Monocraft 10";     # шрифт интерфейса
              font = lib.mkForce "Google Sans Code:style=Regular:size=12";
              # dpi-aware=auto               # поддержка масштабирования DPI
              # message=                     # сообщение в окне
              # message-mode=wrap            # перенос текста сообщения
              prompt = ">> "; # текст запроса
              # placeholder=                 # текст-заполнитель при пустом вводе
              icon-theme = "default"; # тема иконок
              anchor = "center"; # привязка окна по центру
              # x-margin=0                   # горизонтальный отступ окна
              # y-margin=0                   # вертикальный отступ окна
              lines = 15; # количество строк в списке
              # minimal-lines=no             # минимизация количества строк
              width = 30; # ширина окна
              tabs = 8; # размер табуляции
              horizontal-pad = 15; # горизонтальные отступы внутри
              vertical-pad = 12; # вертикальные отступы внутри
              inner-pad = 10; # внутренние отступы контента
              # scaling-filter=box           # фильтр масштабирования изображений
              image-size-ratio = 0.3; # соотношение размера изображения
              gamma-correct-blending = true; # гамма-коррекция при смешении цветов
              # line-height=<use font metrics>; # высота строки
              # letter-spacing=0             # интервал между буквами
              # cache=<not set>              # кэш для ускорения работы
              # render-workers=<number of logical CPUs> # потоки для рендеринга
              # match-workers=<number of logical CPUs>  # потоки для поиска
              # auto-select=no               # авто-выбор первого элемента
            };

            colors = lib.mkForce {
              background = "00000055"; # фон окошка
              # background = "background";
              text = "eeeeeeff"; # текст
              message = "eeeeeeff"; # сообщение
              prompt = "eeeeeeff"; # строка ввода
              placeholder = "eeeeeeff"; # placeholder
              input = "eeeeeeff"; # ввод
              match = "eeeeeeff"; # совпадения
              selection = "ffffffff"; # фон выбранного элемента
              selection-text = "000000ff"; # текст выбранного элемента
              selection-match = "1565C0ff"; # подсвеченные буквы совпадений
              counter = "93a1a1ff"; # счетчик
              border = "ffffffff"; # обводка окошка
            };

            border = {
              width = 0;
              radius = 10;
            };

            dmenu = {
              # mode = "text";
            };

            key-bindings = {
              # Можно добавить кастомные биндинги
            };
          };
        };
      };
  };
}
