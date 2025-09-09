// swift-tools-version: 6.1
import PackageDescription

let package = Package(
    name: "ASR",
    platforms: [
        .iOS(.v15), .macOS(.v12) // adjust as needed
    ],
    products: [
        // Single umbrella product that always brings both binaries
        .library(name: "ASR", targets: ["ASR", "eesen_carthage"])
    ],
    targets: [
        .binaryTarget(
            name: "ASR",
            url: "https://github.com/appareo-systems/ASR/releases/download/0.0.2/ASR.xcframework.zip",
            checksum: "4cf3c96e4bd03258f1e58d8d6ea668dce857973d5a7044254939e502b857d04a"
        ),
        .binaryTarget(
            name: "eesen_carthage",
            url: "https://github.com/appareo-systems/ASR/releases/download/0.0.2/eesen_carthage.xcframework.zip",
            checksum: "ac90513c13363667c953ab7aa4c1cc5e3870abb74b362a26df8e7537e7bda864"
        )
    ]
)
