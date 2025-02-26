# Проект для Qt 6
TEMPLATE = app
TARGET = screengen

# Залежності та шляхи
DEPENDPATH += . src
INCLUDEPATH += . /usr/include/ffmpeg /usr/include/libpng16

# Використання модулів Qt 6
QT += core gui widgets

# Джерельні файли
SOURCES += \
    src/main.cpp \
    src/qffmpeg.cpp \
    src/qshadow.cpp

# Заголовочні файли (якщо є)
HEADERS += \
    src/qffmpeg.h \
    src/qshadow.h

# Бібліотеки для FFmpeg та libpng (упрощенные имена)
LIBS += -lavformat -lavcodec -lavutil -lswscale -lpng

# Додаткові флаги компіляції, якщо потрібні
QMAKE_CFLAGS += -Wall -O2
QMAKE_CXXFLAGS += -Wall -O2

# Каталоги для об’єктних файлів та вихідного файлу
DESTDIR = bin
OBJECTS_DIR = build

# Переклад (локалізація)
TRANSLATIONS += screengen_ru_RU.ts

# Інсталяція
target.path = /usr/bin/
translations.path = /usr/share/screengen/translations/
translations.files += screengen_ru_RU.qm

sg_ru.path = /usr/bin
sg_ru.files += screengen-ru

INSTALLS += target translations sg_ru
