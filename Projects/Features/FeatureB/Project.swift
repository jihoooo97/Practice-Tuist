//
//  Project.swift
//  Manifests
//
//  Created by 유지호 on 6/21/24.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeModule(
    name: "FeatureB",
    product: .staticFramework,
    dependencies: [
        .project(
            target: "FeatureDependency",
            path: .relativeToRoot("Projects/Features/FeatureDependency")
        )
    ]
)
