# ScreenGen

**ScreenGen** 是一款简单的 C++ 和 Qt 命令行实用程序，用于从视频文件创建屏幕列表（屏幕截图库）和单独的屏幕截图。

## 描述

ScreenGen 使用 FFmpeg 进行视频解码，并使用 Qt 创建图形输出。该实用程序专为需要直接从命令行快速创建视频文件预览（以屏幕列表或单个帧的形式）的 Linux 用户而设计。

## 功能特点

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

## 运行和命令行参数

ScreenGen 可以从控制台以及文件管理器的上下文菜单启动。创建的屏幕列表与视频文件位于同一目录，并且具有相同的文件名。

![Example](https://raw.githubusercontent.com/Svarkovsky/screengen/refs/heads/main/screengen_003.png)

要运行 ScreenGen，您需要打开终端并执行 `screengen` 命令，并将视频文件的路径指定为第一个参数。所有其他参数都设置为命令行选项，或使用配置文件 `~/.config/screengen/screengen.conf` 中的参数集。

`screengen video.mp4 [parameters]` <br>
或 <br>
`screengen name_file.avi --preset s5x4 --offsetBegin "00:00:30" --offsetEnd "00:00:10" --listBorder 4`

## 示例
![Example](https://raw.githubusercontent.com/Svarkovsky/screengen/refs/heads/main/anrdou.jpg)
![Example](https://raw.githubusercontent.com/Svarkovsky/screengen/refs/heads/main/screengen_008.jpg)

## 参数
![Parameters](https://raw.githubusercontent.com/Svarkovsky/screengen/refs/heads/main/screengen_002.png)

## 依赖项
FFmpeg： 需要 FFmpeg 库（您的发行版中的 `ffmpeg-libs` 或类似软件包）用于视频解码。
Qt： 需要 Qt 6（或 Qt 5，取决于 ScreenGen 版本）用于图形界面和图像渲染。

## 构建
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

## 许可证
ScreenGen 在 GNU General Public License Version 3 (GPLv3) 许可下分发。有关详细信息，请参阅 `LICENSE` 文件。

## Qt6 适配
此版本的 ScreenGen 经过调整，可与 Qt6 一起使用。原始版本可能是在 Qt5 或更早版本的 Qt 下开发的。适配 Qt6 确保了与现代 Qt 库的兼容性，并且可能包括错误修复和性能改进。

## 鸣谢
Oleg Kochkin - 原始 ScreenGen 版本的作者。 <br>
Ivan Svarkovsky - 感谢他对 Qt6 的适配和项目支持。
