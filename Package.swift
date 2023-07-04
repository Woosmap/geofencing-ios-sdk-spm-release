// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "3.0.16-beta6"
let moduleName = "WoosmapGeofencing"
let checksum = "f54c8992d26581f8f6a790082bded81033aa7e4df910c8eac2b52e053c2931fc"

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
    ],
    dependencies: [
        // Realm
        .package(url: "https://github.com/realm/realm-swift", from: "10.5.1")
    ],
    targets: [
        .target(
            name: "\(moduleName)dependencies",
            dependencies: [
                .product(name: "RealmSwift", package: "realm-swift"),
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
