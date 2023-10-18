import Qt3D.Core 2.0
import Qt3D.Render 2.15
import Qt3D.Input 2.0
import Qt3D.Extras 2.15

import QtQuick 2.0 as QQ2


Entity  {
    id: xyzAxis
    // 添加红色材料
    PhongMaterial {
        id: redMaterial
        diffuse: "red"
        ambient: "white"
        specular: "black"
    }

    Transform {
        id: mainTransform
        translation: Qt.vector3d(0, 0, 0)  // 为示例添加的平移
        rotation: fromEulerAngles(0, 0, 0)  // 为示例添加的旋转
    }

    components: [mainTransform]

    PhongMaterial {
        id: greenMaterial
        diffuse: "green"
        ambient: "white"
        specular: "black"
    }

    PhongMaterial {
        id: blueMaterial
        diffuse: "blue"
        ambient: "white"
        specular: "black"
    }



    // 定义圆柱体的形状
    CylinderMesh {
        id: cylinderMesh
        radius: 0.04
        length: 1
        rings: 2 //length
        slices: 4 //radius
    }

    // 定义圆柱体的位置和大小
    Transform {
        id: xCylinderTransform
        translation: Qt.vector3d(0.5, 0, 0)
        //rotation: fromAxisAndAngle(Qt.vector3d(1, 0, 0), 90) from
        rotation: fromEulerAngles(0,0, 90)
        //scale3D: Qt.vector3d(1, 10, 1)
    }

    Transform {
        id: yCylinderTransform
        translation: Qt.vector3d(0, 0.5, 0)
        //rotation: fromAxisAndAngle(Qt.vector3d(1, 0, 0), 45)
        //rotation: fromEulerAngles(0,0,90)
        //scale3D: Qt.vector3d(1, 10, 1)
    }


    Transform {
        id: zCylinderTransform
        translation: Qt.vector3d(0, 0, 0.5)
        rotation: fromEulerAngles(-90,0,0)
        //scale3D: Qt.vector3d(1, 10, 1)
    }



    // 将材料、形状和变换组合成一个实体
    Entity {
        id: xCylinderEntity
        components: [ cylinderMesh, redMaterial, xCylinderTransform ]
    }
    Entity {
        id: yCylinderEntity
        components: [ cylinderMesh, greenMaterial, yCylinderTransform ]
    }

    Entity {
        id: zCylinderEntity
        components: [ cylinderMesh, blueMaterial, zCylinderTransform ]
    }
}
