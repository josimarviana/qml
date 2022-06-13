import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id:rootId
    width: 640
    height: 480
    visible: true
    title: qsTr("QML Syntax Demo")

    property string texToShow: "hello"

    Row{
        id: row1
        anchors.centerIn: parent
        spacing: 20

        Rectangle{
            id: redRectangleId
            width: 100; height: 100
            color: "red"
            radius: 20
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    console.log("Clicked on the red rectangue")
                    texToShow = "red"
                }
            }
        }
        Rectangle{
            id: greenRectangleId
            width: 100; height: 100
            color: "green"
            radius: 20
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    console.log("Clicked on the green rectangue")
                    texToShow = "green"
                }
            }
        }
        Rectangle{
            id: blueRectangleId
            width: 100; height: 100
            color: "blue"
            radius: 20
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    console.log("Clicked on the blue rectangue")
                    texToShow = "blue"
                }
            }
        }
        Rectangle{
            id: textRectangleId
            width: 100; height: 100
            color: "yellow"
            radius: 100
            Text {
                id: textId
                anchors.centerIn: parent
                text: texToShow
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    console.log("Clicked on the yellow rectangue")
                    texToShow = "yellow"
                }
            }
        }
    }
}
