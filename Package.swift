// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "4.3.1-beta2"
let moduleName = "WoosmapGeofencing"
let checksum = "49b5cbf3550e28161cb90535d55cc354ea7385d86b05c6f69f87abb0a0ae9f4a"

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
    ],
    targets: [
        .binaryTarget(
            name: moduleName,
            url: "https://github.com/Woosmap/geofencing-ios-sdk-spm-release/releases/download/\(version)/\(moduleName).xcframework.zip",
            checksum: checksum
        )
    ]
)
