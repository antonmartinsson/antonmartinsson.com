// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "Portfolio",
    products: [
        .executable(
            name: "Portfolio",
            targets: ["Portfolio"]
        )
    ],
    dependencies: [
        .package(name: "Publish", url: "https://github.com/johnsundell/publish.git", from: "0.8.0"),
    ],
    targets: [
        .target(
            name: "Portfolio",
            dependencies: ["Publish"]
        )
    ]
)
