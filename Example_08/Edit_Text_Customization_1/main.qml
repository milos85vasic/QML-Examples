import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Window {
    visible: true
    width: 640
    height: 480

    Column {
        x: 25
        y: 25
        width: parent.width
        height: parent.width

        Item {
            property int padding: 5
            property int selectionHandleSpacing: 5
            property int selectionHandleWidth: 15
            property int selectionHandleHeight: 30
            property string selectionBackgroundColor: "#8e8e8e"
            property string selectionHandleResource: "resources/handle_middle.png"

            id: root

            height: textField.height + positionHandle.height
            width: parent.width

            TextField {
                id: textField
                width: parent.width
                height: font.pixelSize + (padding * 2)
                font.pointSize: 16
                selectByMouse: false
                placeholderText: "Placeholder text"

                style: TextFieldStyle {
                    selectionColor: root.selectionBackgroundColor
                    background: Rectangle { color: "transparent" }
                    passwordCharacter: "•"
                }
            }

            Image {
                id: positionHandle
                x: 0
                y: textField.font.pixelSize + root.selectionHandleSpacing
                anchors.top: textField.bottom
                width: root.selectionHandleWidth
                height: root.selectionHandleHeight
                source: root.selectionHandleResource
                z: 1000000000000
            }
        }

        TextEdit {
            id: changeFocus
            width: parent.width
            height: 40
            text: "Focus me."
        }
    }
}
