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
            url: "https://github.com/appareo-systems/ASR/releases/download/0.0.9/ASR.xcframework.zip",
            checksum: "5de6c8d55f791802b6fbee59012fbb13b016d90e78c8de6aecd24ce92507fea9"
        ),
        .binaryTarget(
            name: "eesen_carthage",
            url: "https://github.com/appareo-systems/ASR/releases/download/0.0.9/eesen_carthage.xcframework.zip",
            checksum: "33dfbd67b97c788917309830614be4fc2cdbc9909ff2eb6fdaa0590d20e936f9"
        )
    ]
)
