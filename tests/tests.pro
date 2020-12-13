QT       += core testlib
QT       -= gui
TARGET = TypeCountingTests
CONFIG   += console
CONFIG   -= app_bundle
CONFIG   += testcase
CONFIG += debug_and_release

TEMPLATE = app

INCLUDEPATH += includes/ ../app/includes/

CONFIG(debug, debug|release) {
    DESTDIR = ../Generated/Debug/Tests
}

CONFIG(release, debug|release) {
    DESTDIR = ../Generated/Release/Tests
}

OBJECTS_DIR = $$DESTDIR
MOC_DIR = $$DESTDIR
RCC_DIR = $$DESTDIR
UI_DIR = $$DESTDIR

# Input
HEADERS += $$files(../app/includes/*.h, true) \
            $$files(includes/*.h, true)

SOURCES += $$files(../app/sources/*.cpp, true) \
            $$files(sources/*.cpp, true) \
    testMain.cpp

