import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Window 2.2

ApplicationWindow {
    width: 250; height: 175

    Column {
        spacing: 20
        
        Row {
            Label {
                text: "IP Address"
            }
            TextField {
               objectName: "ipaddress"
               placeholderText: qsTr("IP Address")
               focus: true
            }
        }

        Row {
           Label {
              text: "Name"
           }
           TextField {
               objectName: "name"
               placeholderText: qsTr("Name")
               focus: true
           }
        }

        Row {
            Label {
                text: "Password"
            }
           TextField {
               placeholderText: qsTr("Password")
               echoMode: TextInput.Password
           }
        }
        
        Row {
           Button {
               signal messageRequired
               objectName: "myButton"
               text: "Login"
               onClicked: messageRequired()
            }
            Button {
                text: "Cancel"
                onClicked: {
                   Qt.quit();
                }
            }
        }
    }
}