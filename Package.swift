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
            url: "https://github.com/appareo-systems/ASR/releases/download/0.0.10/ASR.xcframework.zip",
            checksum: "41dd43265eda24b362a42738ca310bf909b776c9750dbe2bcfed50a8bd366864"
        ),
        .binaryTarget(
            name: "eesen_carthage",
            url: "https://github.com/appareo-systems/ASR/releases/download/0.0.10/eesen_carthage.xcframework.zip",
            checksum: "6fce47ac975289b2b92b3b33140f119413dfaa227ab355b885a6abd2eb523395"
        )
    ]
)
