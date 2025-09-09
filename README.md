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
```

## How to update

After successfully building deepspeech you should be left with two xcframeworks, ASR.xcframework and eesen_carthage.xcframework.

1. Zip each xcframework

```sh
# Keep the parent folder name in the archive (important!)
ditto -c -k --keepParent ASR.xcframework ASR.xcframework.zip
ditto -c -k --keepParent eesen_carthage.xcframework eesen_carthage.xcframework.zip
```

2. Calculate checksums of each

```sh
swift package compute-checksum ASR.xcframework.zip
swift package compute-checksum eesen_carthage.xcframework.zip
```

3. Update Package.swift with the new checksums, commit and push.

4. Tag the commit that has the new checksums with your new version number (ex: 1.2.3).

5. In Github, add a new realese and choose this tag, upload the two zipped xcframeworks.
