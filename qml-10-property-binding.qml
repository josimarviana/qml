import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id:rootId
    width: 640
    height: 480
    visible: true
    title: qsTr("Property Binding Demo")

    Rectangle {
        id: redRectangleId
        width: 50
        height: width * 1.5
        color: "red"
    }

    Rectangle{
        id: blueRectangleId
        color: "blue"
        width: 100
        height: 100
        anchors.bottom: parent.bottom

        MouseArea {
            anchors.fill: parent
            onClicked: {
                redRectangleId.width = redRectangleId.width + 10
            }
        }
    }
}