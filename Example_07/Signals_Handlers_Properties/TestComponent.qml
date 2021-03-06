import QtQuick 2.0
import QtQuick.Window 2.0

Item {
    id: root
    property int childHeight: 100
    signal childHeightChange(int newHeight)

    Rectangle {
        width: Screen.width
        height: root.childHeight
        color: "red"
    }

    Rectangle {
        width: Screen.width
        height: root.childHeight
        color: "blue"
        y: childHeight
    }

    onChildHeightChanged: root.childHeightChange(root.childHeight)
}
