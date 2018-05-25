import QtQuick 2.9
import QtQuick.Window 2.9

Window {
    visible: true
    color: "grey"

    property int size: 50
    property int margin: 10

    Rectangle {
        width: size * 6
        height: size * 4
        color: "white"

        MyButton { width: size; height: size; color: "blue" }
        MySquareButton {
            side: size;
            x: size + margin;

            onButtonClicked: {
                console.log("Button clicked at: " + xPos)
            }
        }
    }
}
