import QtQuick 2.0
import QtQuick.Window 2.0

Item {
    id: root
    property int height: 100

    Rectangle {
        width: Screen.width
        height: root.height
        color: "red"
    }

    Rectangle {
        width: Screen.width
        height: root.height
        color: "blue"
        y: height
    }
}
