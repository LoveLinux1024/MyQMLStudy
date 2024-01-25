import QtQuick

Window {
    id: root
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    Rectangle {
        id: img
        width: 200
        height: 100
        x: 0
        y: 100

        color: "red"
        Component.onCompleted: console.log("加载完成")

        onColorChanged: {
            console.log("color改变了:", color)
        }

        ColorAnimation {
            id: colorAnimation
            to: "black"
            target: img
            property: "color"
            duration: 2000
        }

        NumberAnimation {
            id: moveAnimation
            to: 0
            target: img
            properties: "x,y"
            duration: 2000
            easing.type: Easing.InOutBounce
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("点击")
                colorAnimation.start()
                moveAnimation.start()
            }
        }
    }
}
