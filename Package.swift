// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "4.6.1-alpha1"
let moduleName = "WoosmapGeofencing"
let checksum = "030609f99f57292e5d7b91c877d831ec1e9333d5c54233d59d3a7ba89f46f60b"

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
