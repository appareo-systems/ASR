// swift-tools-version: 6.1
import PackageDescription

let package = Package(
    name: "ASR",
    platforms: [
        .iOS(.v13), .macOS(.v12) // adjust as needed
    ],
    products: [
        // Single umbrella product that always brings both binaries
        .library(name: "ASR", targets: ["ASR", "eesen_carthage"])
    ],
    targets: [
        .binaryTarget(
            name: "ASR",
            url: "https://github.com/appareo-systems/ASR/releases/download/0.0.1/ASR.xcframework.zip",
            checksum: "774cdc18ac503ea2461d55c9056ca819758c098f5bb4e181153e80025ad37ef7"
        ),
        .binaryTarget(
            name: "eesen_carthage",
            url: "https://github.com/appareo-systems/ASR/releases/download/0.0.1/eesen_carthage.xcframework.zip",
            checksum: "ec213bcd92313ba5b9551c61b715b5d8e6412f7c2d482d2f8e760ed049378734"
        )
    ]
)
