import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    title: qsTr("Datatypes")
    visible: true

    property string mString: "Hello World"
    property int mInt: 45
    property bool isFemale: true
    property double mDouble: 50.5
    property url mUrl: "http://www.uol.com.br"
    property var aNumber: 100
    property var aBool: false
    property var aString: "Hello world!"
    property var anotherString: String("#FF008800")
    property var aColor: Qt.rgba(0.2, 0.3, 0.4, 0.5)
    property var aRect: Qt.rect(10, 10, 10, 10)
    property var aPoint: Qt.point(10, 10)
    property var aSize: Qt.size(10, 10)
    property var aVector3d: Qt.vector3d(100, 100, 100)
    property var anArray: [1, 2, 3, "four", "five", (function() { return "six"; })]
    property var anObject: { "foo": 10, "bar": 20 }
    property var aFunction: (function() { return "one"; })
    property var aFont: Qt.font({family: "Consolas", pointSize: 30, bold: true})
    property date mDate: "2022-06-21"

    Rectangle{
        width: 200
        height: 100 + mInt
        anchors.centerIn: parent
        color: aColor

        Text{
            id: mTextId
            anchors.centerIn: parent
            text: mString
           // font.bold: isFemale?true:false
            font: aFont
        }
    }

    Component.onCompleted: {
        console.log("o valor de mstring: "+mString)
        print("o valor de mInt: "+mInt)

        if(isFemale){
            console.log("is female")
        }else{
            console.log("is men")
        }

        console.log("o valor de mDouble: "+mDouble)
        console.log("o valor de mUrl: "+mUrl)
        console.log("o valor de aNumber: "+aNumber)
        console.log("o valor de aString: "+aString)
        console.log("o valor de anotherString: "+anotherString)
        console.log("o valor de aRect: "+" x: "+aRect.x+" y: "+aRect.y+" width: "+aRect.width+" height: "+aRect.height)
        console.log("o tamanho do array eh: "+anArray.length)

        anArray.forEach(function(value, index) {
           if(index===5)
             console.log(value())
           else{           
             console.log(value)
           }
        })
        for(var i = 0;i< anArray.length;i++){
           if(i===5)
             console.log(anArray[i]())
           else{           
             console.log(anArray[i])
           }
        }
        console.log("The date is: "+mDate)
        console.log("The funcion is: "+aFunction())
    }
}
