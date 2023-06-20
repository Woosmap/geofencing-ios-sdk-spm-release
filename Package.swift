// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "3.0.16-beta2"
let moduleName = "WoosmapGeofencing"
let checksum = "f7d0b14ebc5817b233363c9a76e5a77009e7dbd047ad1c5dd3b5c76b9a6204bb"

let package = Package(
    name: moduleName,
    platforms: [
        .iOS(.v13) //, .macCatalyst(.v15), .macOS(.v10_15)
    ],
    products: [
        .library(
            name: moduleName,
            targets: [moduleName,"\(moduleName)dependencies"]
        ),
        .library(
            name: "\(moduleName)dependencies",
            targets: ["\(moduleName)dependencies"]
        )
    ],
    dependencies: [
        // Realm
        .package(url: "https://github.com/realm/realm-cocoa", from: "10.5.1")
    ],
    targets: [
        .target(
            name: "\(moduleName)dependencies",
            dependencies: [
                .product(name: "RealmSwift", package: "realm-cocoa"),
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
