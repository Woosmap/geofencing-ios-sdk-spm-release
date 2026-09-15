// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "4.7.0-alpha1"
let moduleName = "WoosmapGeofencing"
let checksum = "008482739625d18d89a81c2eb385ce4f11fd232d701a64f3b4b23dc7947bf2c0"

let package = Package(
    name: moduleName,
    platforms: [
        .iOS(.v15) 
    ],
    products: [
        .library(
            name: moduleName,
            targets: [moduleName]
        ),
    ],
    targets: [
        .binaryTarget(
            name: moduleName,
            url: "https://github.com/Woosmap/geofencing-ios-sdk-spm-release/releases/download/\(version)/\(moduleName).xcframework.zip",
            checksum: checksum
        )
    ]
)
