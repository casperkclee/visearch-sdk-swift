// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ViSearchSDK",
    platforms: [.iOS(.v15)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ViSearchSDK",
            targets: ["ViSearchSDK"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/casperkclee/visenze-tracking-swift", branch: "master")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "ViSearchSDK",
            dependencies: [
                .product(name: "ViSenzeAnalytics", package: "visenze-tracking-swift")
            ],
            path: "ViSearchSDK/ViSearchSDK/Classes"
        ),
        .testTarget(
            name: "ViSearchSDKTests",
            dependencies: ["ViSearchSDK"],
            path: "ViSearchSDK/ViSearchSDKTests"
        ),
    ]
)
