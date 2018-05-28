import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    color: "grey"
    visible: true
    title: qsTr("We rule!")

    TestComponent {
        id: test1
        onChildHeightChange: {
            console.log("Child height changed: " + newHeight)
        }
    }

    Component.onCompleted: {
        test1.childHeight = 200
        text1.text = test1.childHeight
    }

    TextInput {
        x: 10
        y: 10

        id: text1
        color: "white"

        onTextChanged: {
            test1.childHeight = text1.text
        }
    }
}
