import QtQuick 2.0
import Ubuntu.Components 1.1


WebContainerTab {
    title: i18n.tr("Zug pünktlich?")

    startUrl: (mainTabs.selectedTab === this) ? "http://mobile.bahn.de/bin/mobil/trainsearch.exe/dox?webview=&" : ""
}
