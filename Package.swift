// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "2.0.14"
let moduleName = "WoosmapGeofencing"
let checksum = "241fbc9a6ebd5c07c5485830abcfebea9316f6e86767ca3307ea68a61c33c42c"

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
