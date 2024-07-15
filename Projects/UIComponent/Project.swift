//
//  Project.swift
//  Manifests
//
//  Created by 유지호 on 7/16/24.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeModule(
    name: "UIComponent",
    product: .framework,
    dependencies: [
        .project(
            target: "Core",
            path: .relativeToRoot("Projects/Core")
        )
    ]
)
