import QtQuick 2.0

Item {
    property variant modalities: ['dummy_name']
    property int mode: 0
    function intro(){
        //explain the task
    }
    function launchTask(){
     console.log('task launched')
     switch(mode){
      case 1:
          task1.init()
          task1.visible = true
          task1.enabled = true
      case 2:
          task2.visible = true
          task2.enabled = true
     }


    }


    FollowPath{
        id:task1
    }

    FindBoats{
        id:task2
        nbBoats: 0

    }
}
