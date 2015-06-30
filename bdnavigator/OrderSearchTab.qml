import QtQuick 2.0
import Ubuntu.Components 1.1


WebContainerTab {
    title: i18n.tr("Auftragssuche")

    startUrl: (mainTabs.selectedTab === this) ? "https://fahrkarten.bahn.de/mobile/ru/rs.post?&sc=suche" : ""
}
