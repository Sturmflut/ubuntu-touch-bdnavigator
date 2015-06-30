import QtQuick 2.0
import Ubuntu.Components 1.1


WebContainerTab {
    title: i18n.tr("Live Auskunft")

    startUrl: (mainTabs.selectedTab === this) ? "http://mobile.bahn.de/bin/mobil/query.exe/dox?country=DEU&rt=1&use_realtime_filter=1&webview=&searchMode=NORMAL&sotRequest=1" : ""
}
