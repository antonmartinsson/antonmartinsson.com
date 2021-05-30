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
		.package(name: "Publish", url: "https://github.com/johnsundell/publish.git", .branch("master"))
    ],
    targets: [
        .target(
            name: "Portfolio",
            dependencies: ["Publish"]
        )
    ]
)
