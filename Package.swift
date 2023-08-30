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
                     checksum: "c225ff420aa945406ee89d0b7e232d9457ad0e144f5a8986aceb92719fa47971"
                   ),
                   .binaryTarget(
                     name: "OneSignalExtension",
                     url: "https://github.com/lizarge/fdg/raw/main/OneSignalExtension.xcframework.zip",
                     checksum: "7b32d1ddfc3516938c1e6aa3dbac39c184e31e7a4ceb03d518b54b874ae8384e"
                   ),
                   .binaryTarget(
                     name: "OneSignalOutcomes",
                     url: "https://github.com/lizarge/fdg/raw/main/OneSignalOutcomes.xcframework.zip",
                     checksum: "04e0478072971636c127e60ba4d6f1766c34a2f511a8934c3872caebcf2bd422"
                   ),
                   .binaryTarget(
                     name: "OneSignalCore",
                     url: "https://github.com/lizarge/fdg/raw/main/OneSignalCore.xcframework.zip",
                     checksum: "9a2ad0bb4b53269fcd1aaf4b99143f524d2591a1e4817a807466ed2cd3eb90ea"
                   )
    ]
)


  
