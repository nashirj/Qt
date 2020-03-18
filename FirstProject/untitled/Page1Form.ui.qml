import QtQuick 2.12
import QtQuick.Controls 2.5

Page {
    id: page
    width: 600
    height: 400
    property alias mouseArea2: mouseArea2
    property alias bottomLeftRect: bottomLeftRect
    property alias mouseArea1: mouseArea1
    property alias middleRightRect: middleRightRect
    property alias mouseArea: mouseArea
    property alias topLeftRect: topLeftRect
    property alias icon: icon
    property alias page: page

    header: Label {
        text: qsTr("Page 1")
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }

    Image {
        id: icon
        x: 10
        y: 20
        width: 55
        height: 41
        source: "blah.png"
        fillMode: Image.Stretch
    }

    Rectangle {
        id: topLeftRect
        width: 55
        height: 41
        color: "#00000000"
        anchors.left: parent.left
        anchors.leftMargin: 10
        anchors.top: parent.top
        anchors.topMargin: 20
        border.color: "#808080"

        MouseArea {
            id: mouseArea
            anchors.fill: parent
        }
    }

    Rectangle {
        id: middleRightRect
        x: -9
        y: -8
        width: 55
        height: 41
        color: "#00000000"
        anchors.right: parent.right
        anchors.rightMargin: 10
        anchors.verticalCenter: parent.verticalCenter
        MouseArea {
            id: mouseArea1
            anchors.fill: parent
        }
        border.color: "#808080"
    }

    Rectangle {
        id: bottomLeftRect
        x: 2
        y: 7
        width: 55
        height: 41
        color: "#00000000"
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 20
        MouseArea {
            id: mouseArea2
            anchors.fill: parent
        }
        border.color: "#808080"
        anchors.left: parent.left
        anchors.leftMargin: 10
    }
}

/*##^##
Designer {
    D{i:4;anchors_height:100;anchors_width:100}D{i:6;anchors_height:100;anchors_width:100}
D{i:8;anchors_height:100;anchors_width:100}D{i:7;anchors_height:41}
}
##^##*/

