//
//  Project.swift
//  Manifests
//
//  Created by 유지호 on 6/21/24.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeModule(
    name: "SecondFeature",
    product: .staticFramework,
    dependencies: [
        .project(
            target: "Services",
            path: .relativeToRoot("Projects/Services")
        )
    ]
)
