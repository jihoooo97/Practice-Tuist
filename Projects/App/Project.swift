import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeModule(
    name: "Practice-Tuist",
    product: .app,
    infoPlist: .file(path: "Resources/Info.plist"),
    resources: ["Resources/**"],
    dependencies: [
        .project(
            target: "Feature",
            path: .relativeToRoot("Projects/Feature")
        )
    ]
)
