import QtQuick 2.0
import Ubuntu.Components 1.1

import com.canonical.Oxide 1.0
import Ubuntu.Web 0.2


Tab {
    property string startUrl

    page: Page {

        head.actions: [
            Action {
                iconName: "back"

                text: i18n.tr("Back")

                onTriggered: {
                    webView.goBack()
                }
            },

            Action {
                iconName: "reset"

                text: i18n.tr("Reset")

                onTriggered: {
                    webView.stop()
                    webView.url = startUrl
                }
            }
        ]


        WebView {
            id: webView

            anchors.fill: parent

            url: startUrl

            context: WebContext {
                userAgent: "Mozilla/5.0 (Linux; Android 4.4.4; Nexus 5 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36;DBNavigator/15060000/Android REL 19/X"

                userScripts: [
                    UserScript {
                        context: "oxide://"
                        url: Qt.resolvedUrl("userscript.js");
                    }
                ]
            }
        }


        ActivityIndicator {
            id: indicator

            anchors.centerIn: parent

            running: webView.loading
            visible: running
        }
    }
}
