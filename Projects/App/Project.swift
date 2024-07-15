import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeModule(
    name: "Practice-Tuist",
    product: .app,
    infoPlist: .file(path: "Resources/Info.plist"),
    resources: ["Resources/**"],
    dependencies: [
        .project(
            target: "RootFeature",
            path: .relativeToRoot("Projects/Features/RootFeature")
        ),
        .project(
            target: "Data",
            path: .relativeToRoot("Projects/Data")
        )
    ]
)
