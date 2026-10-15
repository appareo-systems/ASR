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
            url: "https://github.com/appareo-systems/ASR/releases/download/0.0.8/ASR.xcframework.zip",
            checksum: "1bf6dcbce6ab98115978ffa5355e568feca58c0ea7af96d21a4100503b0cbaf9"
        ),
        .binaryTarget(
            name: "eesen_carthage",
            url: "https://github.com/appareo-systems/ASR/releases/download/0.0.8/eesen_carthage.xcframework.zip",
            checksum: "e281bdbcb081e8a16377c2af5ce2bd646c93b0cb4aa983af853d16936a61b1cc"
        )
    ]
)
