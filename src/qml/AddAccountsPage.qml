import QtQuick 1.1
import com.nokia.meego 1.0
import "constants.js" as Constants


Page {
    id: addAccountsPage
    PageHeader {
        id: header
        text: qsTr("Add New Account")
    }
    ListView {
        width: parent.width; height: parent.height
        anchors.top : header.bottom

        model: accountsproviderModel
        delegate: Item {
            width: parent.width; height: 85
            Row{
                width: parent.width
                spacing: 50
                Column {
                    Image {
                        id: imageItem
                        fillMode: Image.PreserveAspectFit
                        source: "image://theme/"+providerIcon
                    }

                }

                Column {
                    width: 380 //TODO: check why parent.width is not working
                    Label {
                        text: providerName
                        verticalAlignment: Text.AlignVCenter
                    }
                    Label {
                        width: parent.width;
                        font.pixelSize: 15
                        wrapMode: Text.WordWrap
                        text: providerDescription
                        verticalAlignment: Text.AlignVCenter
                    }
                }
            }
        }
    }
}
