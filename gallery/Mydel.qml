import QtQuick 2.0

Component {

    Rectangle {
        width: 200
        height: 170
        scale: mymousearea.containsMouse ? 1.2 : 1

        color: mymousearea.containsMouse ?"green":"white"

        Image {
            id : image
            width: 200
            height: 150
            source:  imageurl
            anchors.top: parent.top
            anchors.left: parent.left

        }

        Text {
            id: mytext
            width: 200
            height: 20

            text: info
            font.pixelSize: 15
            anchors.top: image.bottom

        }
        MouseArea {
            id: mymousearea
            anchors.fill: parent
            hoverEnabled: true
            onClicked: {
                mainparent.itemclicked(mytext.text, image.source)
            }
        }
    }


}
