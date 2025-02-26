# ScreenGen

[English](#english) | [Русский](#russian) | [Українська](#ukrainian) | [简体中文](#chinese) | [Español](#spanish)

---

<a name="english"></a>
## English

**ScreenGen** is a simple command-line utility in C++ and Qt for creating screenlists (screenshot galleries) and individual screenshots from video files.

![ScreenGen скринлист пример](docs/screengen_example.jpg)
*Example of a screenlist created by ScreenGen*

### Description

ScreenGen uses FFmpeg for video decoding and Qt for creating graphical output. The utility is designed for Linux users who need to quickly create previews of video files in the form of screenlists or individual frames directly from the command line.

### Features

*   **Creating screenlists:** Generates a gallery of frames from a video file, arranged in a table.
*   **Creating individual screenshots:** Allows you to get a single frame from a video by specifying a time position.
*   **Command-line configuration:** All utility parameters are set via command-line arguments.
*   **Configuration via presets file:** Possibility to save and use preset parameter sets in the configuration file `~/.config/screengen/screengen.conf`.
*   **Screenlist appearance customization:**
    *   Number of frames in the screenlist.
    *   Sizes of the screenlist and individual frames.
    *   Number of frames horizontally.
    *   Time offsets from the beginning and end of the video for frame selection.
    *   Thickness of screenlist and frame borders.
    *   Shadow settings for frames (offset, intensity, color).
    *   Background image or color.
*   **Header customization:**
    *   Creating a header with video file information (can be disabled).
    *   Font, size, style, color, and shadow settings for header text.
    *   Header background (image or color), border color and thickness.
*   **Timestamp customization on frames:**
    *   Displaying a timestamp on each frame (can be disabled).
    *   Font, size, style, color, and shadow settings for the timestamp.
    *   Selection of timestamp position (top/bottom, left/right corner).
*   **Output image format selection:** Supports various image formats (default - `jpg`).

### Running and Command Line Parameters

ScreenGen is launched from the console, as well as from the context menu of the file manager. The created screenlist is located in the same directory as the video file and with the same file name.

![Example](https://raw.githubusercontent.com/Svarkovsky/screengen/refs/heads/main/screengen_003.png)

To run ScreenGen, you need to open a terminal and execute the `screengen` command, specifying the path to the video file as the first parameter. All other parameters are set as command-line options or using parameter sets in the configuration file `~/.config/screengen/screengen.conf`.

`screengen video.mp4 [parameters]` <br>
or <br>
`screengen name_file.avi --preset s5x4 --offsetBegin "00:00:30" --offsetEnd "00:00:10" --listBorder 4`

### Examples
![Example](https://raw.githubusercontent.com/Svarkovsky/screengen/refs/heads/main/anrdou.jpg)
![Example](https://raw.githubusercontent.com/Svarkovsky/screengen/refs/heads/main/screengen_008.jpg)

### Parameters
![Parameters](https://raw.githubusercontent.com/Svarkovsky/screengen/refs/heads/main/screengen_002.png)

### Dependencies
FFmpeg: FFmpeg libraries are required (`ffmpeg-libs` or a similar package in your distribution) for video decoding.
Qt: Qt 6 (or Qt 5, depending on the ScreenGen version) is required for the graphical interface and image rendering.

### Building
To build ScreenGen from source code, you will need:

*   C++ compiler (e.g., g++)
*   Qt 6 development files (or Qt 5, depending on the version)
*   FFmpeg development files (`libavformat-dev`, `libavcodec-dev`, `libavutil-dev`, `libswscale-dev` or similar packages)
*   libpng development files (`libpng-dev` or `libpng16-dev`)

Standard build process (for Linux):

1.  Download the ScreenGen source code.
2.  Go to the source code directory.
3.  Run `qmake6 screengen.pro` (or `qmake-qt5 screengen.pro` for Qt 5).
4.  Run `make`.

After successful build, the executable file `screengen` will be located in the `bin/` directory.

### License
ScreenGen is distributed under the GNU General Public License Version 3 (GPLv3). See the `LICENSE` file for details.

### Qt6 Adaptation
This version of ScreenGen is adapted to work with Qt6. The original version may have been developed under Qt5 or an earlier version of Qt. Adaptation for Qt6 ensures compatibility with modern Qt libraries and may include bug fixes and performance improvements.

### Acknowledgements
Oleg Kochkin - author of the original ScreenGen version. <br>
Ivan Svarkovsky - for Qt6 adaptation and project support.

---

<a name="russian"></a>
## Русский

**ScreenGen** - это простая консольная утилита на C++ и Qt для создания скринлистов (галерей скриншотов) и отдельных скриншотов из видеофайлов.

### Описание

ScreenGen использует FFmpeg для декодирования видео и Qt для создания графического вывода.  Утилита предназначена для пользователей Linux, которым необходимо быстро создавать превью видеофайлов в виде скринлистов или отдельных кадров прямо из командной строки.

### Возможности

*   **Создание скринлистов:**  Генерирует галерею кадров из видеофайла, упорядоченных в виде таблицы.
*   **Создание отдельных скриншотов:** Позволяет получить один кадр из видео, указав временную позицию.
*   **Конфигурация через командную строку:**  Все параметры работы утилиты задаются через аргументы командной строки.
*   **Конфигурация через файл presets:** Возможность сохранения и использования предустановленных наборов параметров в конфигурационном файле `~/.config/screengen/screengen.conf`.
*   **Настройка внешнего вида скринлиста:**
    *   Количество кадров в скринлисте.
    *   Размеры скринлиста и отдельных кадров.
    *   Количество кадров по горизонтали.
    *   Отступы от начала и конца видео для выборки кадров.
    *   Толщина бордюров скринлиста и кадров.
    *   Настройка тени для кадров (смещение, интенсивность, цвет).
    *   Фоновое изображение или цвет.
*   **Настройка заголовка:**
    *   Создание заголовка с информацией о видеофайле (можно отключить).
    *   Настройка шрифта, размера, стиля, цвета и тени для текста заголовка.
    *   Фон заголовка (изображение или цвет), цвет бордюра и толщина.
*   **Настройка штампа времени на кадрах:**
    *   Вывод штампа времени на каждом кадре (можно отключить).
    *   Настройка шрифта, размера, стиля, цвета и тени для штампа времени.
    *   Выбор позиции штампа времени (верхний/нижний, левый/правый угол).
*   **Выбор формата выходного изображения:** Поддержка различных форматов изображений (по умолчанию - `jpg`).


### Запуск и параметры командной строки

ScreenGen запускается из консоли, а так же из контекстного меню файлового менеджера, созданный скринлист располагается в одном каталоге с видео файлом и с тем же именем файла.

![Example](https://raw.githubusercontent.com/Svarkovsky/screengen/refs/heads/main/screengen_003.png)

Для запуска ScreenGen необходимо открыть терминал и выполнить команду `screengen`, указав в качестве первого параметра путь к видеофайлу.  Все остальные параметры задаются в виде опций командной строки или используется наборов параметров в конфигурационном файле `~/.config/screengen/screengen.conf`.

`screengen video.mp4 [parameters]` <br>
или <br>
`screengen name_file.avi --preset s5x4 --offsetBegin "00:00:30" --offsetEnd "00:00:10" --listBorder 4`

### Примеры
![Example](https://raw.githubusercontent.com/Svarkovsky/screengen/refs/heads/main/anrdou.jpg)
![Example](https://raw.githubusercontent.com/Svarkovsky/screengen/refs/heads/main/screengen_008.jpg)

### Параметры
![Parameters](https://raw.githubusercontent.com/Svarkovsky/screengen/refs/heads/main/screengen_002.png)

### Зависимости
FFmpeg: Необходимы библиотеки FFmpeg (ffmpeg-libs или аналогичный пакет в вашем дистрибутиве) для декодирования видео.
Qt: Требуется Qt 6 (или Qt 5, в зависимости от версии ScreenGen) для графического интерфейса и отрисовки изображений.

### Сборка
Для сборки ScreenGen из исходного кода вам понадобятся:

Компилятор C++ (например, g++)
Qt 6 development files (или Qt 5, в зависимости от версии)
FFmpeg development files (libavformat-dev, libavcodec-dev, libavutil-dev, libswscale-dev или аналогичные пакеты)
libpng development files (libpng-dev или libpng16-dev)
Стандартный процесс сборки (для Linux):

1.  Скачайте исходный код ScreenGen.
2.  Перейдите в каталог с исходным кодом.
3.  Выполните qmake6 screengen.pro (или qmake-qt5 screengen.pro для Qt 5).
4.  Выполните make.
После успешной сборки исполняемый файл screengen будет находиться в каталоге bin/.

### Лицензия
ScreenGen распространяется под лицензией GNU General Public License Version 3 (GPLv3). Смотрите файл LICENSE для получения подробной информации.

### Адаптация для Qt6
Данная версия ScreenGen адаптирована для работы с Qt6. Оригинальная версия могла быть разработана под Qt5 или более раннюю версию Qt. Адаптация для Qt6 обеспечивает совместимость с современными библиотеками Qt и может включать исправления ошибок и улучшения производительности.

### Благодарности
Oleg Kochkin - автор оригинальной версии ScreenGen. <br>
Ivan Svarkovsky - за адаптацию под Qt6 и поддержку проекта.

---

<a name="ukrainian"></a>
## Українська

**ScreenGen** - це проста консольна утиліта на C++ та Qt для створення скрінлістів (галерей скріншотів) та окремих скріншотів з відеофайлів.

### Опис

ScreenGen використовує FFmpeg для декодування відео та Qt для створення графічного виводу. Утиліта призначена для користувачів Linux, яким необхідно швидко створювати прев'ю відеофайлів у вигляді скрінлістів або окремих кадрів прямо з командного рядка.

### Можливості

*   **Створення скрінлістів:** Генерує галерею кадрів з відеофайлу, упорядкованих у вигляді таблиці.
*   **Створення окремих скріншотів:** Дозволяє отримати один кадр з відео, вказавши часову позицію.
*   **Конфігурація через командний рядок:** Усі параметри роботи утиліти задаються через аргументи командного рядка.
*   **Конфігурація через файл presets:** Можливість збереження та використання попередньо встановлених наборів параметрів у файлі конфігурації `~/.config/screengen/screengen.conf`.
*   **Налаштування зовнішнього вигляду скрінліста:**
    *   Кількість кадрів у скрінлісті.
    *   Розміри скрінліста та окремих кадрів.
    *   Кількість кадрів по горизонталі.
    *   Відступи від початку та кінця відео для вибірки кадрів.
    *   Товщина бордюрів скрінліста та кадрів.
    *   Налаштування тіні для кадрів (зміщення, інтенсивність, колір).
    *   Фонове зображення або колір.
*   **Налаштування заголовка:**
    *   Створення заголовка з інформацією про відеофайл (можна вимкнути).
    *   Налаштування шрифту, розміру, стилю, кольору та тіні для тексту заголовка.
    *   Фон заголовка (зображення або колір), колір бордюру та товщина.
*   **Налаштування штампу часу на кадрах:**
    *   Виведення штампу часу на кожному кадрі (можна вимкнути).
    *   Налаштування шрифту, розміру, стилю, кольору та тіні для штампу часу.
    *   Вибір позиції штампу часу (верхній/нижній, лівий/правий кут).
*   **Вибір формату вихідного зображення:** Підтримка різних форматів зображень (за замовчуванням - `jpg`).

### Запуск та параметри командного рядка

ScreenGen запускається з консолі, а також з контекстного меню файлового менеджера, створений скрінліст розташовується в одному каталозі з відео файлом та з тією ж назвою файлу.

![Example](https://raw.githubusercontent.com/Svarkovsky/screengen/refs/heads/main/screengen_003.png)

Для запуску ScreenGen необхідно відкрити термінал і виконати команду `screengen`, вказавши в якості першого параметра шлях до відеофайлу. Усі інші параметри задаються у вигляді опцій командного рядка або використовуються набори параметрів у файлі конфігурації `~/.config/screengen/screengen.conf`.

`screengen video.mp4 [parameters]` <br>
або <br>
`screengen name_file.avi --preset s5x4 --offsetBegin "00:00:30" --offsetEnd "00:00:10" --listBorder 4`

### Приклади
![Example](https://raw.githubusercontent.com/Svarkovsky/screengen/refs/heads/main/anrdou.jpg)
![Example](https://raw.githubusercontent.com/Svarkovsky/screengen/refs/heads/main/screengen_008.jpg)

### Параметри
![Parameters](https://raw.githubusercontent.com/Svarkovsky/screengen/refs/heads/main/screengen_002.png)

### Залежності
FFmpeg: Необхідні бібліотеки FFmpeg (`ffmpeg-libs` або аналогічний пакет у вашому дистрибутиві) для декодування відео.
Qt: Потрібен Qt 6 (або Qt 5, в залежності від версії ScreenGen) для графічного інтерфейсу та відтворення зображень.

### Збірка
Для збірки ScreenGen з вихідного коду вам знадобляться:

*   Компілятор C++ (наприклад, g++)
*   Qt 6 development files (або Qt 5, в залежності від версії)
*   FFmpeg development files (`libavformat-dev`, `libavcodec-dev`, `libavutil-dev`, `libswscale-dev` або аналогічні пакети)
*   libpng development files (`libpng-dev` або `libpng16-dev`)

Стандартний процес збірки (для Linux):

1.  Завантажте вихідний код ScreenGen.
2.  Перейдіть до каталогу з вихідним кодом.
3.  Виконайте `qmake6 screengen.pro` (або `qmake-qt5 screengen.pro` для Qt 5).
4.  Виконайте `make`.

Після успішної збірки виконуваний файл `screengen` буде знаходитися в каталозі `bin/`.

### Ліцензія
ScreenGen розповсюджується за ліцензією GNU General Public License Version 3 (GPLv3). Дивіться файл `LICENSE` для отримання докладної інформації.

### Адаптація для Qt6
Ця версія ScreenGen адаптована для роботи з Qt6. Оригінальна версія могла бути розроблена під Qt5 або ранішу версію Qt. Адаптація для Qt6 забезпечує сумісність з сучасними бібліотеками Qt і може включати виправлення помилок та покращення продуктивності.

### Подяки
Oleg Kochkin - автор оригінальної версії ScreenGen. <br>
Ivan Svarkovsky - за адаптацію під Qt6 та підтримку проекту.

---

<a name="chinese"></a>
## 简体中文

**ScreenGen** 是一款简单的 C++ 和 Qt 命令行实用程序，用于从视频文件创建屏幕列表（屏幕截图库）和单独的屏幕截图。

### 描述

ScreenGen 使用 FFmpeg 进行视频解码，并使用 Qt 创建图形输出。该实用程序专为需要直接从命令行快速创建视频文件预览（以屏幕列表或单个帧的形式）的 Linux 用户而设计。

### 功能特点

*   **创建屏幕列表：** 从视频文件生成帧库，以表格形式排列。
*   **创建单独的屏幕截图：** 允许您通过指定时间位置从视频中获取单个帧。
*   **命令行配置：** 所有实用程序参数都通过命令行参数设置。
*   **通过预设文件配置：** 可以在配置文件 `~/.config/screengen/screengen.conf` 中保存和使用预设参数集。
*   **屏幕列表外观自定义：**
    *   屏幕列表中的帧数。
    *   屏幕列表和单个帧的大小。
    *   水平方向的帧数。
    *   从视频开始和结束的时间偏移量，用于帧选择。
    *   屏幕列表和帧边框的粗细。
    *   帧的阴影设置（偏移量、强度、颜色）。
    *   背景图像或颜色。
*   **标题自定义：**
    *   创建包含视频文件信息的标题（可以禁用）。
    *   标题文本的字体、大小、样式、颜色和阴影设置。
    *   标题背景（图像或颜色）、边框颜色和粗细。
*   **帧上的时间戳自定义：**
    *   在每个帧上显示时间戳（可以禁用）。
    *   时间戳的字体、大小、样式、颜色和阴影设置。
    *   选择时间戳位置（顶部/底部、左侧/右侧角落）。
*   **输出图像格式选择：** 支持各种图像格式（默认 - `jpg`）。

### 运行和命令行参数

ScreenGen 可以从控制台以及文件管理器的上下文菜单启动。创建的屏幕列表与视频文件位于同一目录，并且具有相同的文件名。

![Example](https://raw.githubusercontent.com/Svarkovsky/screengen/refs/heads/main/screengen_003.png)

要运行 ScreenGen，您需要打开终端并执行 `screengen` 命令，并将视频文件的路径指定为第一个参数。所有其他参数都设置为命令行选项，或使用配置文件 `~/.config/screengen/screengen.conf` 中的参数集。

`screengen video.mp4 [parameters]` <br>
或 <br>
`screengen name_file.avi --preset s5x4 --offsetBegin "00:00:30" --offsetEnd "00:00:10" --listBorder 4`

### 示例
![Example](https://raw.githubusercontent.com/Svarkovsky/screengen/refs/heads/main/anrdou.jpg)
![Example](https://raw.githubusercontent.com/Svarkovsky/screengen/refs/heads/main/screengen_008.jpg)

### 参数
![Parameters](https://raw.githubusercontent.com/Svarkovsky/screengen/refs/heads/main/screengen_002.png)

### 依赖项
FFmpeg： 需要 FFmpeg 库（您的发行版中的 `ffmpeg-libs` 或类似软件包）用于视频解码。
Qt： 需要 Qt 6（或 Qt 5，取决于 ScreenGen 版本）用于图形界面和图像渲染。

### 构建
要从源代码构建 ScreenGen，您需要：

*   C++ 编译器（例如，g++）
*   Qt 6 开发文件（或 Qt 5，取决于版本）
*   FFmpeg 开发文件（`libavformat-dev`、`libavcodec-dev`、`libavutil-dev`、`libswscale-dev` 或类似软件包）
*   libpng 开发文件（`libpng-dev` 或 `libpng16-dev`）

标准构建过程（对于 Linux）：

1.  下载 ScreenGen 源代码。
2.  转到源代码目录。
3.  运行 `qmake6 screengen.pro`（或 Qt 5 的 `qmake-qt5 screengen.pro`）。
4.  运行 `make`。

成功构建后，可执行文件 `screengen` 将位于 `bin/` 目录中。

### 许可证
ScreenGen 在 GNU General Public License Version 3 (GPLv3) 许可下分发。有关详细信息，请参阅 `LICENSE` 文件。

### Qt6 适配
此版本的 ScreenGen 经过调整，可与 Qt6 一起使用。原始版本可能是在 Qt5 或更早版本的 Qt 下开发的。适配 Qt6 确保了与现代 Qt 库的兼容性，并且可能包括错误修复和性能改进。

### 鸣谢
Oleg Kochkin - 原始 ScreenGen 版本的作者。 <br>
Ivan Svarkovsky - 感谢他对 Qt6 的适配和项目支持。

---

<a name="spanish"></a>
## Español

**ScreenGen** es una sencilla utilidad de línea de comandos en C++ y Qt para crear listas de capturas de pantalla (galerías de capturas de pantalla) y capturas de pantalla individuales a partir de archivos de vídeo.

### Descripción

ScreenGen utiliza FFmpeg para la decodificación de vídeo y Qt para crear la salida gráfica. La utilidad está diseñada para usuarios de Linux que necesitan crear rápidamente vistas previas de archivos de vídeo en forma de listas de capturas de pantalla o fotogramas individuales directamente desde la línea de comandos.

### Características

*   **Creación de listas de capturas de pantalla:** Genera una galería de fotogramas a partir de un archivo de vídeo, organizados en forma de tabla.
*   **Creación de capturas de pantalla individuales:** Permite obtener un solo fotograma de un vídeo especificando una posición de tiempo.
*   **Configuración mediante línea de comandos:** Todos los parámetros de la utilidad se configuran mediante argumentos de línea de comandos.
*   **Configuración mediante archivo de preajustes:** Posibilidad de guardar y utilizar conjuntos de parámetros preestablecidos en el archivo de configuración `~/.config/screengen/screengen.conf`.
*   **Personalización de la apariencia de la lista de capturas de pantalla:**
    *   Número de fotogramas en la lista de capturas de pantalla.
    *   Tamaños de la lista de capturas de pantalla y de los fotogramas individuales.
    *   Número de fotogramas horizontalmente.
    *   Desplazamientos de tiempo desde el principio y el final del vídeo para la selección de fotogramas.
    *   Grosor de los bordes de la lista de capturas de pantalla y de los fotogramas.
    *   Ajustes de sombra para los fotogramas (desplazamiento, intensidad, color).
    *   Imagen o color de fondo.
*   **Personalización del encabezado:**
    *   Creación de un encabezado con información del archivo de vídeo (se puede desactivar).
    *   Ajustes de fuente, tamaño, estilo, color y sombra para el texto del encabezado.
    *   Fondo del encabezado (imagen o color), color y grosor del borde.
*   **Personalización de la marca de tiempo en los fotogramas:**
    *   Visualización de una marca de tiempo en cada fotograma (se puede desactivar).
    *   Ajustes de fuente, tamaño, estilo, color y sombra para la marca de tiempo.
    *   Selección de la posición de la marca de tiempo (superior/inferior, esquina izquierda/derecha).
*   **Selección del formato de imagen de salida:** Admite varios formatos de imagen (por defecto - `jpg`).

### Ejecución y parámetros de línea de comandos

ScreenGen se ejecuta desde la consola, así como desde el menú contextual del gestor de archivos. La lista de capturas de pantalla creada se encuentra en el mismo directorio que el archivo de vídeo y con el mismo nombre de archivo.

![Example](https://raw.githubusercontent.com/Svarkovsky/screengen/refs/heads/main/screengen_003.png)

Para ejecutar ScreenGen, necesita abrir una terminal y ejecutar el comando `screengen`, especificando la ruta al archivo de vídeo como primer parámetro. Todos los demás parámetros se establecen como opciones de línea de comandos o utilizando conjuntos de parámetros en el archivo de configuración `~/.config/screengen/screengen.conf`.

`screengen video.mp4 [parameters]` <br>
o <br>
`screengen name_file.avi --preset s5x4 --offsetBegin "00:00:30" --offsetEnd "00:00:10" --listBorder 4`

### Ejemplos
![Example](https://raw.githubusercontent.com/Svarkovsky/screengen/refs/heads/main/anrdou.jpg)
![Example](https://raw.githubusercontent.com/Svarkovsky/screengen/refs/heads/main/screengen_008.jpg)

### Parámetros
![Parameters](https://raw.githubusercontent.com/Svarkovsky/screengen/refs/heads/main/screengen_002.png)

### Dependencias
FFmpeg: Se requieren las bibliotecas FFmpeg (`ffmpeg-libs` o un paquete similar en su distribución) para la decodificación de vídeo.
Qt: Se requiere Qt 6 (o Qt 5, dependiendo de la versión de ScreenGen) para la interfaz gráfica y la representación de imágenes.

### Compilación
Para compilar ScreenGen desde el código fuente, necesitará:

*   Compilador de C++ (por ejemplo, g++)
*   Archivos de desarrollo de Qt 6 (o Qt 5, dependiendo de la versión)
*   Archivos de desarrollo de FFmpeg (`libavformat-dev`, `libavcodec-dev`, `libavutil-dev`, `libswscale-dev` o paquetes similares)
*   Archivos de desarrollo de libpng (`libpng-dev` o `libpng16-dev`)

Proceso de compilación estándar (para Linux):

1.  Descargue el código fuente de ScreenGen.
2.  Vaya al directorio del código fuente.
3.  Ejecute `qmake6 screengen.pro` (o `qmake-qt5 screengen.pro` para Qt 5).
4.  Ejecute `make`.

Tras una compilación correcta, el archivo ejecutable `screengen` se encontrará en el directorio `bin/`.

### Licencia
ScreenGen se distribuye bajo la Licencia Pública General de GNU Versión 3 (GPLv3). Consulte el archivo `LICENSE` para obtener más detalles.

### Adaptación a Qt6
Esta versión de ScreenGen está adaptada para funcionar con Qt6. La versión original podría haberse desarrollado con Qt5 o una versión anterior de Qt. La adaptación a Qt6 garantiza la compatibilidad con las bibliotecas Qt modernas y puede incluir correcciones de errores y mejoras de rendimiento.

### Agradecimientos
Oleg Kochkin - autor de la versión original de ScreenGen. <br>
Ivan Svarkovsky - por la adaptación a Qt6 y el soporte del proyecto.
