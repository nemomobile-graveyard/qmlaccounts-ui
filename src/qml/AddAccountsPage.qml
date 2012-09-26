import QtQuick 1.1
import com.nokia.meego 1.0
import "constants.js" as Constants


Page {
    id: addAccountsPage
    property Person contact
    PageHeader {
        id: header
        text: qsTr("Add New Account")
    }
}