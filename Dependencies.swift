//
//  Dependencies.swift
//  PackageName
//
//  Created by Lalana Chamika on 2023-12-06.
//

import ProjectDescription

let dependencies = Dependencies(
    swiftPackageManager: .init(
        productTypes: [
            "Base_SDK": .framework, // default is .staticFramework
            "UI_Kit_Package": .framework, // default is .staticFramework
        ]
    ),
    platforms: [.iOS]
)
