import QtQuick 2.7
import QtQuick.Controls 2.0

import "../../icons"

Button
{
    property alias source: icon.source
    property alias iconOpacity: icon.opacity
    property alias backgroundColor: background.color
    property alias iconStyle: icon.style

    implicitWidth: 50
    implicitHeight: 50

    contentItem: Ionicon
    {
        id: icon
        anchors.fill: parent
    }

    background: Rectangle
    {
        id: background
        anchors.fill: parent
        color: "transparent"
    }
}
