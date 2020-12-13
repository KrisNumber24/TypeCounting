TEMPLATE = app
TARGET = TypeCounting
INCLUDEPATH += .
INCLUDEPATH += includes/

CONFIG += debug_and_release

# Input
HEADERS += $$files(includes/*.h, true)
SOURCES += $$files(sources/*.cpp, true)\
    main.cpp

CONFIG(debug, debug|release) {
    DESTDIR = ../Generated/Debug/TypeCounting
}

CONFIG(release, debug|release) {
    DESTDIR = ../Generated/Release/TypeCounting
}

OBJECTS_DIR = $$DESTDIR
MOC_DIR = $$DESTDIR
RCC_DIR = $$DESTDIR
UI_DIR = $$DESTDIR

QT += gui widgets

#DISTFILES +=

#QMAKE_POST_LINK += 
