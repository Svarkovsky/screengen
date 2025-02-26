# ScreenGen

**ScreenGen** is a simple command-line utility in C++ and Qt for creating screenlists (screenshot galleries) and individual screenshots from video files.

![ScreenGen скринлист пример](docs/screengen_example.jpg)
*Example of a screenlist created by ScreenGen*

## Description

ScreenGen uses FFmpeg for video decoding and Qt for creating graphical output. The utility is designed for Linux users who need to quickly create previews of video files in the form of screenlists or individual frames directly from the command line.

## Features

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

## Running and Command Line Parameters

ScreenGen is launched from the console, as well as from the context menu of the file manager. The created screenlist is located in the same directory as the video file and with the same file name.

![Example](https://raw.githubusercontent.com/Svarkovsky/screengen/refs/heads/main/screengen_003.png)

To run ScreenGen, you need to open a terminal and execute the `screengen` command, specifying the path to the video file as the first parameter. All other parameters are set as command-line options or using parameter sets in the configuration file `~/.config/screengen/screengen.conf`.

`screengen video.mp4 [parameters]` <br>
or <br>
`screengen name_file.avi --preset s5x4 --offsetBegin "00:00:30" --offsetEnd "00:00:10" --listBorder 4`

## Examples
![Example](https://raw.githubusercontent.com/Svarkovsky/screengen/refs/heads/main/anrdou.jpg)
![Example](https://raw.githubusercontent.com/Svarkovsky/screengen/refs/heads/main/screengen_008.jpg)

## Parameters
![Parameters](https://raw.githubusercontent.com/Svarkovsky/screengen/refs/heads/main/screengen_002.png)

## Dependencies
FFmpeg: FFmpeg libraries are required (`ffmpeg-libs` or a similar package in your distribution) for video decoding.
Qt: Qt 6 (or Qt 5, depending on the ScreenGen version) is required for the graphical interface and image rendering.

## Building
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

## License
ScreenGen is distributed under the GNU General Public License Version 3 (GPLv3). See the `LICENSE` file for details.

## Qt6 Adaptation
This version of ScreenGen is adapted to work with Qt6. The original version may have been developed under Qt5 or an earlier version of Qt. Adaptation for Qt6 ensures compatibility with modern Qt libraries and may include bug fixes and performance improvements.

## Acknowledgements
Oleg Kochkin - author of the original ScreenGen version. <br>
Ivan Svarkovsky - for Qt6 adaptation and project support.
