//
//  Project.swift
//  AppManifests
//
//  Created by 유지호 on 6/21/24.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeModule(
    name: "Data",
    product: .staticFramework,
    dependencies: [
        .project(
            target: "Domain",
            path: .relativeToRoot("Projects/Domain")
        ),
        .project(
            target: "Core",
            path: .relativeToRoot("Projects/Core")
        )
    ]
)
