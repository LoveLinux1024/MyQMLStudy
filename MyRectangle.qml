import QtQuick

Rectangle {
    id: root
    property string name: "mingzi"
    property alias fonObj: label.font
    width: 100
    height: 100

    Text {
        id: label
        anchors.centerIn: parent
        text: name
        font {
            pixelSize: 10
            bold: true
        }
    }

}
