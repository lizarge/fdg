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
                     checksum: "b4bea59cc72bf4da268b54db5b07d7e2ad8cdec4fc7cfd4fda894e7cd3f57418"
                   ),
                   .binaryTarget(
                     name: "OneSignalExtension",
                     url: "https://github.com/lizarge/fdg/raw/main/OneSignalExtension.xcframework.zip",
                     checksum: "42b4a6b80f6a792577bc0aea7fbe57b182a5488ed6315be3d5053573ad0a204d"
                   ),
                   .binaryTarget(
                     name: "OneSignalOutcomes",
                     url: "https://github.com/lizarge/fdg/raw/main/OneSignalOutcomes.xcframework.zip",
                     checksum: "771172a36e740b3cd8d117eea68c821d8842f1bcd8afaf63d96e29a5de26c874"
                   ),
                   .binaryTarget(
                     name: "OneSignalCore",
                     url: "https://github.com/lizarge/fdg/raw/main/OneSignalCore.xcframework.zip",
                     checksum: "b45de609d5061ff2403e00ddddaf47c2465b77cc3b0462b3c6e1648c3634e810"
                   )
    ]
)


  
