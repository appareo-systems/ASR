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
            url: "https://github.com/appareo-systems/ASR/releases/download/0.0.4/ASR.xcframework.zip",
            checksum: "4d740627a4eebf14b02790ce9b4893698ef976f269b5e17bb22a41441f322374"
        ),
        .binaryTarget(
            name: "eesen_carthage",
            url: "https://github.com/appareo-systems/ASR/releases/download/0.0.4/eesen_carthage.xcframework.zip",
            checksum: "1a2422cd69cecbea07291ba3aefee42e367efe25795a16192740bd6ba64d688d"
        )
    ]
)
