import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    color: "grey"
    visible: true
    title: qsTr("We rule!")

    TestComponent {
        onChildHeightChange: {
            console.log("Child height changed.")
        }
    }
}
