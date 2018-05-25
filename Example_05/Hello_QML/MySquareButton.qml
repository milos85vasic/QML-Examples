import QtQuick 2.0

Rectangle {
    property int side: 100

    width: side;
    height: side
    color: "red"

    MouseArea {
        anchors.fill: parent
        onClicked: console.log("Button clicked!")
    }
}
