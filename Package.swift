// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "3.0.16-beta4"
let moduleName = "WoosmapGeofencing"
let checksum = "504cab7879c9abcf10e4c33acf1d341763ec3d1e891c3ad7c50b1b8763be04c3"

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
//        .library(
//            name: "\(moduleName)dependencies",
//            targets: ["\(moduleName)dependencies"]
//        )
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
