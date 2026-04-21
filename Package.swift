// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "4.5.4"
let moduleName = "WoosmapGeofencing"
let checksum = "ca3e7ced9e9d9212c76f110d81a4fbffb764fbde6f1c75b7e0368dae2c718a3c"

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
