import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Column {
        x: 25
        y: 25
        width: parent.width
        height: parent.width

        TextEdit {
            property int selectionHandleSpacing: 5
            property int selectionHandleWidth: 10
            property int selectionHandleHeight: 40

            id: root
            height: 40
            width: parent.width
            selectByMouse: false

            Text {
                id: placeholder
                text: "Placeholder text"
                color: "#aaa"
            }

            cursorDelegate: Rectangle {
                width: root.selectionHandleWidth
                height: root.font.pixelSize + root.selectionHandleSpacing + root.selectionHandleHeight + root.selectionHandleSpacing
                color: "transparent"

                Rectangle {
                    x: 0
                    y: root.font.pixelSize + root.selectionHandleSpacing
                    height: root.selectionHandleHeight
                    width: parent.width
                    color: "red"
                }
            }

            onTextChanged: {
                placeholder.visible = false
            }

            onFocusChanged: {
                if(!focus && !text){
                    placeholder.visible = true
                }
            }
        }

        TextEdit {
            id: changeFocus
            width: parent.width
            height: customized.height
            text: "Focus me."
        }
    }
}
