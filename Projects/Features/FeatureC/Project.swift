//
//  Project.swift
//  RootFeatureManifests
//
//  Created by 유지호 on 7/16/24.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeModule(
    name: "FeatureC",
    product: .staticFramework,
    dependencies: [
        .project(
            target: "FeatureDependency",
            path: .relativeToRoot("Projects/Features/FeatureDependency")
        )
    ]
)
