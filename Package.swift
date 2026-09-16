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
            url: "https://github.com/appareo-systems/ASR/releases/download/0.0.7/ASR.xcframework.zip",
            checksum: "d61db0028c9d81da456dcadb96502f2272d23423c080cdc7f0c7d2d36c50ca57"
        ),
        .binaryTarget(
            name: "eesen_carthage",
            url: "https://github.com/appareo-systems/ASR/releases/download/0.0.5/eesen_carthage.xcframework.zip",
            checksum: "b8991b60cb2727c34a1d49405ac46d12009c8a90d0ec635c956ff357fd472875"
        )
    ]
)
