import QtQuick 2.0

Rectangle {
    property int side: 100
    property bool pressed: mouseArea1.pressed

    width: side;
    height: side
    color: "red"
    id: rectRoot

    signal buttonClicked(real xPos, real yPos)

    MouseArea {
        id: mouseArea1;
        anchors.fill: parent
        onClicked: rectRoot.buttonClicked(mouse.x, mouse.y)
    }
}
