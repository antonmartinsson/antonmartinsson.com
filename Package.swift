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
		.package(name: "Plot", url: "https://github.com/johnsundell/plot.git", from: "0.9.1"),
        .package(name: "Publish", url: "https://github.com/johnsundell/publish.git", from: "0.7.0"),
    ],
    targets: [
        .target(
            name: "Portfolio",
            dependencies: ["Plot", "Publish"]
        )
    ]
)
