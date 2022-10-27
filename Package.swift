// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "2.0.12"
let moduleName = "WoosmapGeofencing"
let checksum = "34a87211caa2b0e3199ff8f89eaf8fce3fa4e0a18869e0dd591d23982fa7c416"

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
        // WoosmapCore
        .package(url: "https://github.com/Woosmap/geofencing-core-ios-sdk", from: "3.0.0")
        // Surge Package
        .package(url: "https://github.com/Jounce/Surge.git", from: "2.3.0"),
        // Realm
        .package(url: "https://github.com/realm/realm-cocoa", from: "10.5.1")
    ],
    targets: [
        .target(
            name: "\(moduleName)dependencies",
            dependencies: [
                .product(name: "WoosmapGeofencingCore", package: "WoosmapGeofencingCore"),
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
