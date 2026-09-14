// swift-tools-version: 6.1
import PackageDescription

let package = Package(
    name: "ASR",
    platforms: [
        .iOS(.v16), .macOS(.v12) // adjust as needed
    ],
    products: [
        // Single umbrella product that always brings both binaries
        .library(name: "ASR", targets: ["ASR", "eesen_carthage"])
    ],
    targets: [
        .binaryTarget(
            name: "ASR",
            url: "https://github.com/appareo-systems/ASR/releases/download/0.0.6/ASR.xcframework.zip",
            checksum: "a5adfd3a7d126863e63b4f2c78a2fd3ce135987433e51d784baa8c6ef4f9246f"
        ),
        .binaryTarget(
            name: "eesen_carthage",
            url: "https://github.com/appareo-systems/ASR/releases/download/0.0.5/eesen_carthage.xcframework.zip",
            checksum: "b8991b60cb2727c34a1d49405ac46d12009c8a90d0ec635c956ff357fd472875"
        )
    ]
)
