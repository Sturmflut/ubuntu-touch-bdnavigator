import QtQuick 2.0
import Ubuntu.Components 1.1


WebContainerTab {
    title: i18n.tr("Baustelleninfo")

    startUrl: (mainTabs.selectedTab === this) ? "http://bauarbeiten.bahn.de/mobile" : ""
}
