import QtQuick 2.0

Rectangle {
    color:"yellow"
    property int nbForce: 0
    property variant listForceIntensities: []
    property variant listForcePositions: [] //positions and orienttions
    property variant path: [] // from the predefined set of lines

    function loadPath(){
     // here load the zone with the path defined
    }

    function addForces(){
        // loadForces on path
        // define forces as point zones with intensity and orientation in action associated to the zone
    }

    Path {
        startX: 50; startY: 50
        PathSvg { path: "m 194.28571,455.21933 c 284.28572,0 30,227.14285 30,227.14285 l 272.85715,-1.42857 c 0,0 202.85714,67.14286 -15.71429,117.14286 -218.57143,50 -215.71428,45.71428 -215.71428,45.71428 l 0,0 -120,-37.14285" }
    }

}
