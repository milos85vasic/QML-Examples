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
            id: customized
            height: 40
            width: parent.width

            Text {
                id: placeholder
                text: "Placeholder text"
                color: "#aaa"
            }

            cursorDelegate: Rectangle {
                width: 5
                height: 10
                color: "red"
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
