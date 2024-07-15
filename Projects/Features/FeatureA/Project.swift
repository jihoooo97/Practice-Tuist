import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeModule(
    name: "FeatureA",
    product: .staticFramework,
    dependencies: [
        .project(
            target: "FeatureDependency",
            path: .relativeToRoot("Projects/Features/FeatureDependency")
        )
    ]
)
