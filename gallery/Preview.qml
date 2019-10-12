import QtQuick 2.0

Rectangle {
    width: 1280
    height: 760
    color: "white"

    property string title: ""
    property string posterimage: ""

    Text {
        width: parent.width
        height: 100
        id :textname
        font.pixelSize: 50
        font.bold: true
        text: title
        anchors.top: parent.top
        anchors.left: parent.left
    }
    Image {
        width: 500
        height: 500
        source: posterimage
        anchors.top: textname.bottom
        anchors.topMargin: 100
        anchors.left: parent.left
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            parent.visible = false
        }
    }

}
