// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "3.0.16-beta7"
let moduleName = "WoosmapGeofencing"
let checksum = "3ad981b2858e9351a90281e3b1fdfdf63537797e3898ab2cab97aa949fed3e2a"

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
