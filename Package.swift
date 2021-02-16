// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "RDError",
    products: [
        .library(
            name: "RDError",
            targets: ["RDError"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "RDError",
            dependencies: []),
        .testTarget(
            name: "RDErrorTests",
            dependencies: ["RDError"]),
    ]
)
