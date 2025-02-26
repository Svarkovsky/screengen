# ScreenGen

**ScreenGen** es una sencilla utilidad de línea de comandos en C++ y Qt para crear listas de capturas de pantalla (galerías de capturas de pantalla) y capturas de pantalla individuales a partir de archivos de vídeo.

## Descripción

ScreenGen utiliza FFmpeg para la decodificación de vídeo y Qt para crear la salida gráfica. La utilidad está diseñada para usuarios de Linux que necesitan crear rápidamente vistas previas de archivos de vídeo en forma de listas de capturas de pantalla o fotogramas individuales directamente desde la línea de comandos.

## Características

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

## Ejecución y parámetros de línea de comandos

ScreenGen se ejecuta desde la consola, así como desde el menú contextual del gestor de archivos. La lista de capturas de pantalla creada se encuentra en el mismo directorio que el archivo de vídeo y con el mismo nombre de archivo.

![Example](https://raw.githubusercontent.com/Svarkovsky/screengen/refs/heads/main/screengen_003.png)

Para ejecutar ScreenGen, necesita abrir una terminal y ejecutar el comando `screengen`, especificando la ruta al archivo de vídeo como primer parámetro. Todos los demás parámetros se establecen como opciones de línea de comandos o utilizando conjuntos de parámetros en el archivo de configuración `~/.config/screengen/screengen.conf`.

`screengen video.mp4 [parameters]` <br>
o <br>
`screengen name_file.avi --preset s5x4 --offsetBegin "00:00:30" --offsetEnd "00:00:10" --listBorder 4`

## Ejemplos
![Example](https://raw.githubusercontent.com/Svarkovsky/screengen/refs/heads/main/anrdou.jpg)
![Example](https://raw.githubusercontent.com/Svarkovsky/screengen/refs/heads/main/screengen_008.jpg)

## Parámetros
![Parameters](https://raw.githubusercontent.com/Svarkovsky/screengen/refs/heads/main/screengen_002.png)

## Dependencias
FFmpeg: Se requieren las bibliotecas FFmpeg (`ffmpeg-libs` o un paquete similar en su distribución) para la decodificación de vídeo.
Qt: Se requiere Qt 6 (o Qt 5, dependiendo de la versión de ScreenGen) para la interfaz gráfica y la representación de imágenes.

## Compilación
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

## Licencia
ScreenGen se distribuye bajo la Licencia Pública General de GNU Versión 3 (GPLv3). Consulte el archivo `LICENSE` para obtener más detalles.

## Adaptación a Qt6
Esta versión de ScreenGen está adaptada para funcionar con Qt6. La versión original podría haberse desarrollado con Qt5 o una versión anterior de Qt. La adaptación a Qt6 garantiza la compatibilidad con las bibliotecas Qt modernas y puede incluir correcciones de errores y mejoras de rendimiento.

## Agradecimientos
Oleg Kochkin - autor de la versión original de ScreenGen. <br>
Ivan Svarkovsky - por la adaptación a Qt6 y el soporte del proyecto.
