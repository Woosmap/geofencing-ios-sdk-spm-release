// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "4.5.2-beta1"
let moduleName = "WoosmapGeofencing"
let checksum = "e4e295f69c25a6b802062b1b18652aa907df0f0f3fb9d75edcc2d6eeeea9df6f"

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
