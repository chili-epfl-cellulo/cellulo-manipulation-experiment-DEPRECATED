import QtQuick 2.0

Rectangle {

    id:findboat
    width: 1200
    height: 700
    property int rows: (height-100)/30
    property int cols: (width-200)/30
    property int nbBoats: 0
    property var listBoatPositions: [Qt.point(0,0)]
    property variant listBoatIntensities: [0]
    property variant listBoatOrientation: [0]
    property int maxIntensity: 100 //N
    property double angleDiscretization: 1.0 // in degrees
    property double maxOrientation: 360 / angleDiscretization // in degrees * discretization


    //Component.onCompleted: {init()}

    function init(){
        nbBoats= Math.round(Math.random()*5)
        for(var n =0; n < nbBoats; n++){
            listBoatPositions[n]=Qt.point(Math.round(Math.random()*cols), Math.round(Math.random()*rows))
            console.log(listBoatPositions[n])
            listBoatIntensities[n]=Math.random()*maxIntensity
            console.log(listBoatIntensities[n])
            listBoatOrientation[n]=Math.random()*maxOrientation
        }
         grid.enabled=true
    }


    Grid{
        id:grid
        enabled:false
        x:0
        y:0
        rows: parent.rows; columns: parent.cols; spacing: 10
        Repeater { model: nbBoats

            Rectangle { width: 30; height: 30
                color: "red"
                opacity:100
                x: 5
                y:   10
            }
            Text { text: "I'm item " + index }
            Text { text: "x,y " + listBoatPositions[index] }
            Text { text: "Intensisty " + listBoatIntensities[index] +"\n"}
        }
    }


}
