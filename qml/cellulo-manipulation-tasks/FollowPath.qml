import QtQuick 2.0

Rectangle {
    width: 1000
    height: 620

    property int nbForce: 0
    property variant listForceIntensities: []
    property variant listForcePositions: [] //positions and orienttions
    property variant path: []

    function loadPath(){
     // here load the zone with the path defined
    }

    function addForces(){
        // loadForces on path
        // define forces as point zones with intensity and orientation in action associated to the zone
    }

}
