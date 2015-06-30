TEMPLATE = aux
TARGET = bdnavigator

RESOURCES += bdnavigator.qrc

QML_FILES += $$files(*.qml,true) \
             $$files(*.js,true)

CONF_FILES +=  bdnavigator.apparmor \
               bdnavigator.desktop \
               bdnavigator.png

AP_TEST_FILES += tests/autopilot/run \
                 $$files(tests/*.py,true)               

OTHER_FILES += $${CONF_FILES} \
               $${QML_FILES} \
               $${AP_TEST_FILES} \
    ConnectionSearchTab.qml \
    TrainPunctualTab.qml \
    WebContainerTab.qml \
    DoorToDoorTab.qml \
    ArrivalDepartureTab.qml \
    OrderSearchTab.qml \
    LiveConnectionTab.qml \
    ConstructionSiteTab.qml

#specify where the qml/js files are installed to
qml_files.path = /bdnavigator
qml_files.files += $${QML_FILES}

#specify where the config files are installed to
config_files.path = /bdnavigator
config_files.files += $${CONF_FILES}

INSTALLS+=config_files qml_files

