QT += qml quick quickcontrols2 websockets

CONFIG += c++14

SOURCES += main.cpp

HEADERS += platform.h
HEADERS += fileio.h

RESOURCES += resources.qrc
RESOURCES += fonts/fonts.qrc
RESOURCES += components/components.qrc
RESOURCES += icons/icons.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

macx {
    QMAKE_INFO_PLIST = ../../osx/Info.plist
}

CONFIG(debug, debug|release) {
    message("debug mode")
    DEFINES += DEBUG
} else
{
    message("release mode")
}

android-g++ {
    QT += androidextras
}

DISTFILES += \
    android/AndroidManifest.xml \
    android/gradle/wrapper/gradle-wrapper.jar \
    android/gradlew \
    android/res/values/libs.xml \
    android/build.gradle \
    android/gradle/wrapper/gradle-wrapper.properties \
    android/gradlew.bat

ANDROID_PACKAGE_SOURCE_DIR = $$PWD/android
