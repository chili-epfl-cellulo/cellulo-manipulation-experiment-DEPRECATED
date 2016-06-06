import QtQuick 2.0
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2

Rectangle{
    width: 400
    height: 150
    color: "blue"
    radius: width*0.5
    opacity: 0.6
    property string buttontext: "default"
    signal buttonClicked()
    Text{
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        font.family: "Helvetica"
        font.pointSize: 25
        font.bold: true
        text: buttontext
    }

    MouseArea{
        anchors.fill: parent
        onClicked: {
            parent.opacity = 0.3;
            buttonClicked()
        }
    }
}

