import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Dialogs 1.2
import QtQuick.Window 2.2
import QtQuick.Controls.Styles 1.4
import QtQuick.Layouts 1.1
import QtCanvas3D 1.0
import Cellulo 1.0

ApplicationWindow {
    visible: true
    width: Screen.width /2
    height: Screen.height/2
    title: qsTr("Manipulation")

    StateEngine{
        id: stateEngine
        currentState: "MainMenu"
        states: [
            "MainMenu",
            "Task1",
            "Task2",
            "Task3",
            "Task4",
            "Task5",
            "Task6",
        ]
        onCurrentStateChanged: {
            mainmenu.visible = false;
            mainmenu.enabled = false;
            console.log(currentState)
            switch(currentState){
            case 'MainMenu':
                mainmenu.visible = true;
                mainmenu.enabled = true;
                break;
            case 'Task1':
                currentTask.mode = 1;
                mainmenu.visible = false
                mainmenu.enabled = false
                break;
            case 'Task2':
                currentTask.mode = 2;
                mainmenu.visible = false
                mainmenu.enabled = false
                break;
            case 'Task3':
                currentTask.mode = 3;
                mainmenu.visible = false
                mainmenu.enabled = false
                break;
            case 'Task4':
                currentTask.mode = 4;
                mainmenu.visible = false
                mainmenu.enabled = false
                break;
            case 'Task5':
                currentTask.mode = 5;
                mainmenu.visible = false
                mainmenu.enabled = false
                break;
            case 'Task6':
                currentTask.mode = 6;
                mainmenu.visible = false
                mainmenu.enabled = false
                break;
            default:
                break;
            }
        }
    }

    Task{
        id:currentTask
        mode:0
        width:parent.width
        height:parent.height
        visible : false
        enabled : false
        onModeChanged: {launchTask()
            console.log('mode changed')
        }
    }

    /*MainMenu {
        id: mainmenu
        stateEngine: stateEngine
        onBClicked:{
            stateEngine.currentState=taskname
            console.log(taskname)
            console.log(stateEngine.currentState)
        }
    }*/



    ListModel {
           id: appModel // used to be icons of 48
           ListElement { name: "Follow the Path"; icon: "../../assests/FollowPath.png" }
           ListElement { name: "FindSubmarines"; icon: "../../assests/FindSubmarines.png" }
           ListElement { name: "Rollercoaster"; icon: "../../assests/FollowPath.png" }
           ListElement { name: "ReMove"; icon: "../../assests/FollowPath.png" }
           ListElement { name: "Feel The Gemoetry"; icon: "../../assests/FeelGeometry.png" }
           ListElement { name: "Crack the Code"; icon: "../../assests/FollowPath.png" }
           ListElement { name: "Help"; icon: "../../assests/FollowPath.png" }
       }



    Component {
           id: appDelegate
           Item {
               width: 300; height: 300
               scale: PathView.iconScale

               Image {
                   id: myIcon
                   y: 20; anchors.horizontalCenter: parent.horizontalCenter
                   source: icon
                   width:48;height:48
               }
               Text {
                   anchors { top: myIcon.bottom; horizontalCenter: parent.horizontalCenter }
                   text: name
               }

               MouseArea {
                   anchors.fill: parent
                   onClicked: {view.currentIndex = index;

                   console.log("current index %d", index)
                   }
               }
           }
       }

       Component {
           id: appHighlight
           Rectangle { width: 80; height: 80; color: "lightsteelblue" }
       }

       PathView {
           id: view
           anchors.fill: parent
           highlight: appHighlight
           preferredHighlightBegin: 0.5
           preferredHighlightEnd: 0.5
           focus: true
           model: appModel
           delegate: appDelegate
           path: Path {
               startX: 50
               startY: 50
               PathAttribute { name: "iconScale"; value: 0.5 }
               PathQuad { x: 400; y: 200; controlX: 200; controlY: 400 }
               PathAttribute { name: "iconScale"; value: 1.0 }
               PathQuad { x: 390; y: 50; controlX: 350; controlY: 200 }
               PathAttribute { name: "iconScale"; value: 1 }
           }
       }


    /*CelluloRobot{
        id: cellulo1
        //playground: playground
        robotId: 1
        robotComm.macAddr : "00:06:66:74:48:A7"
        robotComm.onConnectedChanged:{
            if(robotComm.connected){
                currentTask.state="ready"
            }
            else{
                currentTask.state="waitconnect"
            }
        }
    }*/

}


