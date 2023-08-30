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
    targets: 
         .binaryTarget(
          name: "OneSignal",
          url: "https://github.com/lizarge/fdg/raw/main/OneSignal.xcframework.zip",
          checksum: "ea347176274d156f8b3da7201d7d765b18544ed9cc8903c0fbc478fcc0ba2131"
        ),
        .binaryTarget(
          name: "OneSignalExtension",
          url: "https://github.com/lizarge/fdg/raw/main/OneSignalExtension.xcframework.zip",
          checksum: "0e049595991c5c8e45f5a364d20a8fed588f51996b546f282f565977e86cbdb5"
        ),
        .binaryTarget(
          name: "OneSignalOutcomes",
          url: "https://github.com/lizarge/fdg/raw/main/OneSignalOutcomes.xcframework.zip",
          checksum: "af061518d4c1b8cc5308514eed744e8feb08a5837b09fdf8e41d5f91aa49b243"
        ),
        .binaryTarget(
          name: "OneSignalCore",
          url: "https://github.com/lizarge/fdg/raw/main/OneSignalCore.xcframework.zip",
          checksum: "828d54463c05ebaf4c3e601961d70317e2ed32bcc40d5b6f4e2a99fe123f654b"
        )
    ]
)


  