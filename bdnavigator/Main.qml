import QtQuick 2.0
import Ubuntu.Components 1.1

/*!
    \brief MainView with a Label and Button elements.
*/

MainView {
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "mainView"

    // Note! applicationName needs to match the "name" field of the click manifest
    applicationName: "bdnavigator.sturmflut"

    /*
     This property enables the application to change orientation
     when the device is rotated. The default is false.
    */
    //automaticOrientation: true

    // Removes the old toolbar and enables new features of the new header.
    useDeprecatedToolbar: false

    width: units.gu(100)
    height: units.gu(75)

    backgroundColor: "white"

    Tabs {
        id: mainTabs

        anchors.fill: parent


        ConnectionSearchTab {}

        LiveConnectionTab {}

        DoorToDoorTab {}

        ArrivalDepartureTab {}

        TrainPunctualTab {}

        OrderSearchTab {}

        ConstructionSiteTab {}

        TrainPunctualTab {}
    }
}
