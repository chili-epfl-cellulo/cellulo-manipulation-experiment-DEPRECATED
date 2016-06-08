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
    title: qsTr("Wind Field Game")

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
        visible : false
        enabled : false
        onModeChanged: {launchTask()
            console.log('mide changed')
        }
    }

    MainMenu {
        id: mainmenu
        stateEngine: stateEngine
        onBClicked:{
            stateEngine.currentState=taskname
            console.log(taskname)
            console.log(stateEngine.currentState)
        }
    }

    CelluloRobot{
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
        robotComm.onKidnappedChanged:{
            //log
        }

        onTouchesChanged:{
            console.log(cellulo1.touches)
        }

        robotComm.onLongTouch:{
            //log
        }

        robotComm.onPoseChanged: {
            //logdata
        }
    }

}


