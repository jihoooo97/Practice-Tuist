import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeModule(
    name: "Feature",
    product: .staticFramework,
//    resources: ["Resources/**"],
    dependencies: [
        .project(
            target: "Services",
            path: .relativeToRoot("Projects/Services")
        )
    ]
)
