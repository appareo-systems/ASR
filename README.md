# ASR 

Swift Package Manager wrapper for **ASR (deepspeech)** and **eesen_carthage**.  
Both XCFrameworks are always bundled together — install `ASR` to get both.

---

## Installation

In your project’s `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/appareo/ASR.git", .upToNextMajor(from: "1.0.0"))
],
targets: [
    .target(
        name: "YourApp",
        dependencies: [
            .product(name: "ASR", package: "ASR")
        ]
    )
]
