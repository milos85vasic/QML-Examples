import QtQuick 2.9
import QtQuick.Window 2.9

Window {
    visible: true
    color: "grey"

    Rectangle {
        width: 300
        height: 200
        color: "white"

        MyButton { width: 50; height: 50; color: "blue" }
    }
}
