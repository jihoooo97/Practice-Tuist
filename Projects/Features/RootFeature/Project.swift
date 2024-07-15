//
//  Project.swift.swift
//  AppManifests
//
//  Created by 유지호 on 7/16/24.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeModule(
    name: "RootFeature",
    product: .staticFramework,
    dependencies: [
        .project(
            target: "FeatureA",
            path: .relativeToRoot("Projects/Features/FeatureA")
        ),
        .project(
            target: "FeatureB",
            path: .relativeToRoot("Projects/Features/FeatureB")
        ),
        .project(
            target: "FeatureC",
            path: .relativeToRoot("Projects/Features/FeatureC")
        )
    ]
)
