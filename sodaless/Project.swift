import ProjectDescription

let project = Project(
    name: "sodaless",
    targets: [
        .target(
            name: "sodaless",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.sodaless",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["sodaless/Sources/**"],
            resources: ["sodaless/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "sodalessTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.sodalessTests",
            infoPlist: .default,
            sources: ["sodaless/Tests/**"],
            resources: [],
            dependencies: [.target(name: "sodaless")]
        ),
    ]
)
