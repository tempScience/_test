import QtQuick 2.12
import QtQuick.Controls 2.12

import Components.Controls 1.0 as EIControls
import Components.Style 1.0 as EIStyle

Rectangle {
    anchors.fill: parent
    color: EIStyle.Color.appBackgroundColor

    Column {
        anchors.centerIn: parent
        spacing: 10

        Label {
            id: label
            text: "initial text"
            color: "white"
        }

        EIControls.Button {
            text: "button 1"
            onClicked: setLabelText(text)
        }

        EIControls.Button {
            text: "button 2"
            onClicked: setLabelText(text)
        }

    }

    function setLabelText(text) {
        label.text = text + " clicked"
    }

}

