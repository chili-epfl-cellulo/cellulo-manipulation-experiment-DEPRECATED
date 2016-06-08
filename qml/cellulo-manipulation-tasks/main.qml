import QtQuick 2.0

Rectangle {
    width: 1300
    height: 600

    StateEngine{
        id: stateEngine
        currentState: "MainMenu"
        states: [
            "MainMenu",
            "Task1",
            "Task2",
            "Task3"
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
            default:
                break;
            }
        }
    }

    Task{
       id:currentTask
       mode:0
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

}


