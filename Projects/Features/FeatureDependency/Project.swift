//
//  Project.swift
//  AppManifests
//
//  Created by 유지호 on 7/16/24.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeModule(
    name: "FeatureDependency",
    product: .framework,
    dependencies: [
        .project(
            target: "UIComponent",
            path: .relativeToRoot("Projects/UIComponent")
        ),
        .project(
            target: "Domain",
            path: .relativeToRoot("Projects/Domain")
        )
    ]
)
