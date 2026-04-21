// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "4.5.4-alpha1"
let moduleName = "WoosmapGeofencing"
let checksum = "787fd79a31069310d3a575d325836aacb03e53d810ebeee45ddf4211b7f2465e"

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
