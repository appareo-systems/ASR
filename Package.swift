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
            url: "https://github.com/appareo-systems/ASR/releases/download/0.0.3/ASR.xcframework.zip",
            checksum: "3923651d77cad8d7d53dbdf3195bbb632b50ff4833413635e96f917ed439b6a0"
        ),
        .binaryTarget(
            name: "eesen_carthage",
            url: "https://github.com/appareo-systems/ASR/releases/download/0.0.3/eesen_carthage.xcframework.zip",
            checksum: "702bf9418006216500bad674e4c80a675c950c61e05572db0e53314be82ab6e3"
        )
    ]
)
