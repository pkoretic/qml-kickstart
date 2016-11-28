QT += qml quick quickcontrols2

CONFIG += c++14

SOURCES += cpp/main.cpp
HEADERS += cpp/platform.h
HEADERS += cpp/fileio.h

RESOURCES += resources.qrc

RESOURCES += qml/qml.qrc
RESOURCES += qml/components/components.qrc

RESOURCES += fonts/fonts.qrc
RESOURCES += icons/icons.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

macx {
    QMAKE_INFO_PLIST = osx/Info.plist
}

ios {
    QMAKE_INFO_PLIST = ios/Info.plist
}

android-g++ {
    QT += androidextras
    ANDROID_PACKAGE_SOURCE_DIR = $$PWD/android

    DISTFILES += \
        android/AndroidManifest.xml \
        android/res/values/libs.xml
}

CONFIG(debug, debug|release) {
    message("debug mode")
    DEFINES += DEBUG
    QT += websockets
} else
{
    message("release mode")
}
