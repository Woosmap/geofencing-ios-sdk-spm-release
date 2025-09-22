// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "4.3.15"
let moduleName = "WoosmapGeofencing"
let checksum = "ca2296950b92ce770386cb3cf7209033d0935e0cd7adab5357fb68f4c28e6de5"

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
