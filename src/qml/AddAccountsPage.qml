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
        width: 2000; height: 2500
        anchors.top : header.bottom

        model: accountsproviderModel
        delegate: /*Image {
            id: providerImage
            anchors.left: parent.left
            fillMode: Image.PreserveAspectFit
            height: UiConstants.ListItemHeightDefault
            source: "image://theme/icon-l-email"
            }*/

            Label {
            id: nameLabel
            anchors.left: parent.left
            anchors.right: parent.right
            height: UiConstants.ListItemHeightDefault
            text: providerName
            verticalAlignment: Text.AlignVCenter

            }
            //TODO: see why the description is not working.
            Label {
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: nameLabel.bottom
            height: UiConstants.ListItemHeightDefault
            text: providerDescription
            verticalAlignment: Text.AlignVCenter
            }
    }
}
