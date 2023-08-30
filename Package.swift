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
                     checksum: "9d1626938abc326a56cedef75283b12c1837d53753ee8448ed101f8d140b9268"
                   ),
                   .binaryTarget(
                     name: "OneSignalExtension",
                     url: "https://github.com/lizarge/fdg/raw/main/OneSignalExtension.xcframework.zip",
                     checksum: "8beda0cba06596f41def34991b78e94d19e6d6bb6fbd3d1cc2735d924e44537c"
                   ),
                   .binaryTarget(
                     name: "OneSignalOutcomes",
                     url: "https://github.com/lizarge/fdg/raw/main/OneSignalOutcomes.xcframework.zip",
                     checksum: "44e6f307b65bed5481885e4ab34e0a1841b9adefd6f26d858cc6b69abfa6f756"
                   ),
                   .binaryTarget(
                     name: "OneSignalCore",
                     url: "https://github.com/lizarge/fdg/raw/main/OneSignalCore.xcframework.zip",
                     checksum: "be1c826140fdb0327187995b0c4741806e3cfd7932b6e34c753d105b143668f5"
                   )
    ]
)


  
