// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FlappboardSwift",
    platforms: [
        .iOS(.v17),
        .tvOS(.v17),
        .macOS(.v14),
        .visionOS(.v1),
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "FlappboardSwift",
            targets: ["FlappboardSwift"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/flappboard/swift-protocol", from: "4.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "FlappboardSwift",
            dependencies: [
                .product(name: "FlappboardSwiftProtocol", package: "swift-protocol"),
            ]
        ),
        .testTarget(
            name: "FlappboardSwiftTests",
            dependencies: ["FlappboardSwift"]
        ),
    ]
)
