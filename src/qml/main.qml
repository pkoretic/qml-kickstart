import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.1

import "../ionicons"
import "components"

Rectangle
{
    id: main

    color: "#aaa"

    Column
    {
        anchors.centerIn: parent
        Label
        {
            text: tr("Welcome to QML Kickstart!")
        }

        IconButton
        {
            source: "android-exit"
            height: 60
            anchors.horizontalCenter: parent.horizontalCenter

            onClicked: Qt.quit()
        }
    }
}
