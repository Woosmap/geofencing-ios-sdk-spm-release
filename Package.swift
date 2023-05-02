// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "3.0.12"
let moduleName = "WoosmapGeofencing"
let checksum = "8d4b8490db214fa1e1b2a28fd013786761b8d3d356e8b1be1b31cd60356ca832"

let package = Package(
    name: moduleName,
    platforms: [
        .iOS(.v13) //, .macCatalyst(.v15), .macOS(.v10_15)
    ],
    products: [
        .library(
            name: moduleName,
            targets: [moduleName]
        ),
        .library(
            name: "\(moduleName)dependencies",
            targets: ["\(moduleName)dependencies"]
        )
    ],
    dependencies: [
        // Surge Package
        .package(url: "https://github.com/Jounce/Surge.git", from: "2.3.0"),
        // Realm
        .package(url: "https://github.com/realm/realm-cocoa", from: "10.5.1")
    ],
    targets: [
        .target(
            name: "\(moduleName)dependencies",
            dependencies: [
                .product(name: "RealmSwift", package: "realm-cocoa"),
                .product(name: "Surge", package: "Surge"),
            ],
            path: "dependencies"
        ),
        .binaryTarget(
            name: moduleName,
            url: "https://github.com/Woosmap/geofencing-ios-sdk-spm-release/releases/download/\(version)/\(moduleName).xcframework.zip",
            checksum: checksum
        )
    ]
)
