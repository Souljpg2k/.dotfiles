import "../Colors"
import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Hyprland
import Quickshell.Io
import Quickshell.Wayland

PanelWindow {
    id: root

    property string background: "#0D0D0D"
    property string foreground: "#DDDDDD"
    property int wsmodel: 10
    property string mid: "#131313"
    property string ws: "#1E1E1E"
    property string wsbackground: "#0E0E0E"
    property string wsText: "#878787"
    property string wsTextActive: "#FFFFFF"
    property string iconApp: "󰣇"
    property int iconSize: 18

    implicitHeight: 40
    color: background

    anchors {
        top: true
        left: true
        right: true
    }

    Rectangle {
        id: midBar

        anchors.centerIn: parent
        color: mid
        radius: 20
        width: row.implicitWidth + 16
        height: row.implicitHeight + 8

        RowLayout {
            id: row

            anchors.centerIn: parent
            spacing: 6

            Rectangle {
                Layout.preferredWidth: 40
                Layout.preferredHeight: 24
                color: "transparent"

                Text {
                    anchors.centerIn: parent
                    text: iconApp
                    font.pixelSize: iconSize
                    font.bold: true
                    color: foreground
                }

                MouseArea {
                    anchors.fill: parent
                    hoverEnabled: true
                    onClicked: appProcess.running = true
                }

                Process {
                    id: appProcess

                    command: ["rofi", "-show", "drun"]
                }

            }

            Rectangle {
                color: wsbackground
                radius: 20
                Layout.preferredWidth: wsmodel * 24 + (wsmodel - 1) * 6 + 26 + 12
                Layout.preferredHeight: 24 + 8

                Row {
                    anchors.centerIn: parent
                    spacing: 6

                    Repeater {
                        model: wsmodel

                        Rectangle {
                            property bool isActive: Hyprland.focusedWorkspace && Hyprland.focusedWorkspace.id === (index + 1)

                            radius: 50
                            width: isActive ? 50 : 24
                            height: 24
                            color: isActive ? Colors.source_color : (mouseArea.containsMouse ? "#2a2a2a" : ws)

                            Text {
                                anchors.centerIn: parent
                                text: index + 1
                                color: isActive ? wsTextActive : wsText
                                font.pixelSize: 13
                                font.bold: isActive
                            }

                            MouseArea {
                                id: mouseArea

                                anchors.fill: parent
                                hoverEnabled: true
                                onClicked: Hyprland.dispatch("workspace " + (index + 1))
                            }

                            Behavior on color {
                                ColorAnimation {
                                    duration: 120
                                }

                            }

                            Behavior on width {
                                NumberAnimation {
                                    duration: 180
                                }

                            }

                        }

                    }

                }

            }

            SystemClock {
                id: clock

                precision: SystemClock.Seconds
            }

            Text {
                text: Qt.formatDateTime(clock.date, "ddd d MMM   hh:mm:ss")
                color: foreground
                font.bold: true
                Layout.leftMargin: 4
                Layout.rightMargin: 4
            }

        }

    }

}
