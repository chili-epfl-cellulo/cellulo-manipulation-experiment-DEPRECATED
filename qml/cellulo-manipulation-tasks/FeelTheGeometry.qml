import QtQuick 2.0

Rectangle {
    width: 100
    height: 62
    color:"red"
    x:200
    y:400
    // in this activity the user should deternime the virtual geometrical shape by exploring the space


    property variant geometryShape: 0 // will be defined by zones
    property variant shapeSize:100 // should define some modalities (a rane of 5 sizes for instance)

    property variant borderThinkness:100 // should define a range of 5 thickness

    property double intensityOfHaptic:100 // define a range of 5





}
