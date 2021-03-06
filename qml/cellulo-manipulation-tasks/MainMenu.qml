import QtQuick 2.0
import QtQuick.Layouts 1.3
Rectangle {
    width: 100
    height: 62
    property variant stateEngine: stateEngine
    signal bClicked(string taskname)
    GridLayout {
        columns: 3
        rowSpacing: 30
        Button{
            id: btask1
            color:"red"
            buttontext: "Follow the path"
            onButtonClicked: {
                bClicked("Task1")
            }
        }

        Button{
            id: btask2
            color:"orange"
            buttontext: "Find the boats"
            onButtonClicked: {
                bClicked("Task2")
            }
        }

        Button{
            id: btask3
            color:"Yellow"
            buttontext: "Rollercoster"
            onButtonClicked: bClicked("Task3")
        }

        Button{
            id: tbask4
            buttontext: "Re-Move"
            onButtonClicked: bClicked("Task4")
        }
        Button{
            id: tbask5
            buttontext: "Find the shape"
            onButtonClicked: bClicked("Task5")
        }
        Button{
            id: tbask6
            buttontext: "Crack the code"
            onButtonClicked: bClicked("Task6")
        }


    }


}
