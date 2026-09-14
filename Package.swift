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
            url: "https://github.com/appareo-systems/ASR/releases/download/0.0.5/ASR.xcframework.zip",
            checksum: "0bd34b0de5c1b8a722d94492bfe877c6bcd5a5caf867cfc27ed30e89eb49fd1f"
        ),
        .binaryTarget(
            name: "eesen_carthage",
            url: "https://github.com/appareo-systems/ASR/releases/download/0.0.5/eesen_carthage.xcframework.zip",
            checksum: "b8991b60cb2727c34a1d49405ac46d12009c8a90d0ec635c956ff357fd472875"
        )
    ]
)
