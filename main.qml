import QtQuick
import QtQuick.Controls 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Resizable rectangle")
    Rectangle{
        id:rect
        anchors.centerIn: parent
        width:200
        height:100
        color: "red"
        Rectangle{
            anchors.right: parent.right
            height: parent.height
            width:5
            MouseArea{
                id:right
                anchors.fill: parent
                cursorShape: Qt.SizeHorCursor
                onMouseXChanged: {
                    rect.width = rect.width + mouseX
                    if(rect.width<5)rect.width=5
                }
            }
        }
        Rectangle{
            anchors.left: parent.left
            height: parent.height
            width:5
            MouseArea{
                id:left
                anchors.fill: parent
                cursorShape: Qt.SizeHorCursor
                onMouseYChanged: {
                    rect.width = rect.width - mouseX
                    rect.x=rect.x+mouseX
                    if(rect.width<5)rect.width=5
                }
            }
        }
        Rectangle{
            anchors.top: parent.top
            height: 5
            width:parent.width
            MouseArea{
                id:top
                anchors.fill: parent
                cursorShape: Qt.SizeVerCursor
                onMouseYChanged: {
                    rect.y=rect.y+mouseY
                    rect.height = rect.height - mouseY
                    if(rect.height<5)rect.height=5
                }
            }
        }
        Rectangle{
            anchors.bottom: parent.bottom
            width:parent.width
            height: 5
            MouseArea{
                id:bottom
                anchors.fill: parent
                cursorShape: Qt.SizeVerCursor
                onMouseYChanged: {
                    rect.height = rect.height + mouseY
                    if(rect.height<5)rect.height=5
                }
            }
        }


    }

}
// import QtQuick
// Window{
//     width: 640
//     height: 480
//     visible: true
//     title: qsTr("Hello World")
//     Item {
//         width: 200; height: 200

//         DropArea {
//             x: 75; y: 75
//             width: 50; height: 50

//             Rectangle {
//                 anchors.fill: parent
//                 color: "green"

//                 visible: parent.containsDrag
//             }
//         }

//         Rectangle {
//             x: 10; y: 10
//             width: 20; height: 20
//             color: "red"

//             Drag.active: dragArea.drag.active
//             Drag.hotSpot.x: 10
//             Drag.hotSpot.y: 10

//             MouseArea {
//                 id: dragArea
//                 anchors.fill: parent

//                 drag.target: parent
//             }
//         }
//     }
// }


