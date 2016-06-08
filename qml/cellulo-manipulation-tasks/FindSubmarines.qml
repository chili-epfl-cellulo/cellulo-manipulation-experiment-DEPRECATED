import QtQuick 2.0

Rectangle {
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

    function init(){
        nbBoats= Math.round(Math.random()*5)
        for(var n =0; n < nbBoats; n++){
            listBoatPositions[n]=Qt.point(Math.round(Math.random()*cols), Math.round(Math.random()*rows))
            console.log(listBoatPositions[n])
            listBoatIntensities[n]=Math.random()*maxIntensity
            console.log(listBoatIntensities[n])
            listBoatOrientation[n]=Math.random()*maxOrientation
        }
    }


    Image{
        width:parent.width
        height:parent.height
        source: "../../assests/FindSubmarines/sea.png"
    }
}
