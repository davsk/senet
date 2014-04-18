import QtQuick 2.2
import QtQuick.Controls 1.0
import QtQuick.Layouts 1.1
import QtQuick.Window 2.1
import QtQuick.Dialogs 1.1

ApplicationWindow {
    width: 640
    height: 480
    title: "𓄿 Senet 𓄿"

    menuBar: MenuBar {
        Menu {
            title: qsTr("File")
            MenuItem {
                text: qsTr("Single Player - Green")
                onTriggered: Qt.quit();
            }

            MenuItem { text: "Single Player - Red"}
            MenuItem { text: "Two Player Hot Seat"}
            MenuItem { text: "Network Game"}

            MenuSeparator {}

            MenuItem {
                text: qsTr("Exit")
                onTriggered: Qt.quit();
            }

        }
        Menu {
            title: "Edit"
            MenuItem { text: "Preferences" }
        }
        Menu {
            title: "View"
            MenuItem {
                text: "Rules"
                onTriggered: rulesWindow.visible = true
            }
            MenuItem {
                text: "Keymap"
                onTriggered: keymapWindow.visible = true
            }
            MenuItem {
                text: "Ratings"
                checkable: true
            }
        }
        Menu {
            title: "Help"
            MenuItem {
                text: "About"
                onTriggered: aboutDialog.open()
            }
        }
    }

    statusBar: StatusBar {
        RowLayout {
            Label { text: "Game Status - Waiting."}
        }
    }

    Button {
        text: qsTr("Hello World")
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
    }

    MessageDialog {
        id: aboutDialog
        icon: StandardIcon.Information
        text: "Universe - Senet\nVersion 2.1.0"
        informativeText: "by David L. Skinner\n& Daniel L. Skinner\n\nhttp://senet.davsk.com"
        detailedText: "Artwork by Stephen\n\nUsing:\n  Azul3D\n  QML\n  Steamworks."
        title: "𓄿 Senet - About 𓄿"
        width: 200
        standardButtons: StandardButton.Close
        onRejected: aboutDialog.close()
    }

    Window {
        id: rulesWindow
        visible: true
        width: 640
        height: 480
        title: "𓄿 Senet - Rules 𓄿"
        TextArea {
            width: 640
            height: 480
            FontLoader {
                id: gFont
                name: "Gardiner"
            }

            text: "     Rules of the Ancient Egyptian Board Game of Senet.\n\nThe shuffle count may be from 0 to 4 black sticks. 0 black sticks counts as a 6.\nIf you get a 1, 4, or 6 then you get a second turn.\nYou can't land on one of your own pawns.\nYou can't land on an opponent pawn that is on a safe square.\nYou can't land on an opponent pawn if they have two or more in a row.\nYou can't jump over an opponent pawn if they have three or more in a row.\nIf you do land on an opponent pawn, you exchange places with them.\nIf you land in the House of Water you return to the House of Rebirth.\nYou are not allowed to jump over the House of Happiness.\nYou are not allowed to leave the House of the Three Truths except with a 3.\nYou are not allowed to leave the House of the Re-Atoum except with a 2.\nYou are not allowed to leave the last house except with a 6.\nIf you cannot move forward then you must move backward.\nIf you cannot move then you skip your turn.\nThe first player to move all pawns off board wins."
            textFormat: text.RichText
            font.bold: true
            font.pointSize: 12
            font.family: gFont.name
            readOnly: true
        }
    }

    Window {
        id: keymapWindow
        visible: true
        width: 640
        height: 480
        title: "𓄿 Senet - Keymap 𓄿"
        TextArea {
            width: 640
            height: 480
            text: qsTr("     Rules of the Ancient Egyptian Board Game of Senet.\n\nThe shuffle count may be from 0 to 4 black sticks. 0 black sticks counts as a 6.\nIf you get a 1, 4, or 6 then you get a second turn.\nYou can't land on one of your own pawns.\nYou can't land on an opponent pawn that is on a safe square 𓇢 𓀭 𓂂.\nYou can't land on an opponent pawn if they have two or more in a row.\nYou can't jump over an opponent pawn if they have three or more in a row.\nIf you do land on an opponent pawn, you exchange places with them.\nIf you land in the House of Water 𓈗 you return to the House of Rebirth 𓉑.\nYou are not allowed to jump over the House of Happiness 𓄿.\nYou are not allowed to leave the House of the Three Truths 𓇢 except with a 3.\nYou are not allowed to leave the House of the Re-Atoum 𓀭 except with a 2.\nYou are not allowed to leave the last house 𓂂 except with a 6.\nIf you cannot move forward then you must move backward.\nIf you cannot move then you skip your turn.\nThe first player to move all pawns off board wins.")
            font.bold: true
            font.pointSize: 12
            font.family: gFont.name
            readOnly: true
        }
    }

    Window {
        id: prefWindow
        visible: true
        width: 640
        height: 480
        title: "𓄿 Senet - Preferences 𓄿"
    }

}
