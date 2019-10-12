import QtQuick 2.5
import QtQuick.Window 2.2

Window {
    visible: true
    width: 1280
    height: 760
    title: qsTr("Hello World")

    Item {
        id: mainparent
        signal itemclicked (var title ,var imageurl)

        onItemclicked: {
            mypre.title  = title;
            mypre.posterimage = imageurl
            mypre.visible = true
        }



        Mymodel {
            id :mymod

        }
        Mydel {
            id :mydell

        }

        GridView {
            width: 1280
            height: 760
            cellWidth: 220
            cellHeight: 190
            model: mymod
            delegate: mydell
            enabled: (!mypre.visible)
        }

        Preview {
            id :mypre
            visible: false
        }

    }

}
