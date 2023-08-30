// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OneSignal",
    products: [
        .library(
            name: "OneSignal",
            targets: ["OneSignalWrapper"]),
        .library(
            name: "OneSignalExtension",
            targets: ["OneSignalExtensionWrapper"])
    ],
    targets:[

           .target(
            name: "OneSignalWrapper",
            dependencies: [
                "OneSignal",
                "OneSignalExtension",
                "OneSignalOutcomes",
                "OneSignalCore"
            ],
            path: "OneSignalWrapper"
            ),
            .target(
                name: "OneSignalExtensionWrapper",
                dependencies: [
                    "OneSignalExtension",
                    "OneSignalOutcomes",
                    "OneSignalCore"
                ],
                path: "OneSignalExtensionWrapper"
            ),
            .target(
                name: "OneSignalOutcomesWrapper",
                dependencies: [
                    "OneSignalOutcomes",
                    "OneSignalCore"
                ],
                path: "OneSignalOutcomesWrapper"
            ),

            .binaryTarget(
                     name: "OneSignal",
                     url: "https://github.com/lizarge/fdg/raw/main/OneSignal.xcframework.zip",
                     checksum: "982c3ce06f8f4c564ae07638fd115b08725f47b58f512418b7d1fb938980ce1e"
                   ),
                   .binaryTarget(
                     name: "OneSignalExtension",
                     url: "https://github.com/lizarge/fdg/raw/main/OneSignalExtension.xcframework.zip",
                     checksum: "ef0a97a876bc041fb39fb4b0346e93a8b3f3e5608683b7afce9339ae2ed62d44"
                   ),
                   .binaryTarget(
                     name: "OneSignalOutcomes",
                     url: "https://github.com/lizarge/fdg/raw/main/OneSignalOutcomes.xcframework.zip",
                     checksum: "6a6a27c7dc9dcfbf1c00ab3c529f43230226dcccd0f3ea00afc73d2d7d9ec01e"
                   ),
                   .binaryTarget(
                     name: "OneSignalCore",
                     url: "https://github.com/lizarge/fdg/raw/main/OneSignalCore.xcframework.zip",
                     checksum: "63854432330f2763646d4622bb3a9d4f709538c49728b94fb19803d005492101"
                   )
    ]
)


  
