QT += quick
QT_FOR_CONFIG += 3dcore
QT += 3dcore 3drender 3dinput 3dextras
QT += widgets
QT += 3dcore 3drender 3dinput 3dlogic 3dextras
QT += qml 3dcore 3drender 3dinput 3dextras 3dquick
QT += qml quick 3dinput

SOURCES += \
    main.cpp

OTHER_FILES += \
    ShowCoordinateAxes.qml \
    main.qml

RESOURCES += \
    scene3d.qrc
