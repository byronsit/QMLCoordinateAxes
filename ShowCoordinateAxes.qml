import Qt3D.Core 2.0
import Qt3D.Render 2.15
import Qt3D.Input 2.0
import Qt3D.Extras 2.15

import QtQuick 2.0 as QQ2


Entity {
    id: sceneRoot
    property RenderCapabilities capabilities : renderSettings.renderCapabilities

    Camera {
        id: camera
        projectionType: CameraLens.PerspectiveProjection
        fieldOfView: 45
        nearPlane : 0.1
        farPlane : 1000.0
        //position: Qt.vector3d( 3, 0, 0 )
        position: Qt.vector3d( 5, 5, 5 )
        //upVector: Qt.vector3d( 0.0, 0.0, 0.0 )
        viewCenter: Qt.vector3d( 0.0, 0.0, 0.0 )
    }

    FirstPersonCameraController { camera: camera }

    components: [
        RenderSettings {
            id: renderSettings
            activeFrameGraph: ForwardRenderer {
                camera: camera
                clearColor: "transparent"
                showDebugOverlay: false
            }
        },
        InputSettings { }
    ]

    CoordinateAxes{}
}
