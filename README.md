# ASR

Swift Package Manager wrapper for **ASR** (on-device speech recognition, built from [appareo-systems/deepspeech.ios](https://github.com/appareo-systems/deepspeech.ios)) and its **eesen_carthage** dependency.

This repo doesn't contain any source of its own — it's a thin `Package.swift` that points at zipped xcframeworks attached to [GitHub Releases](https://github.com/appareo-systems/ASR/releases) here. The actual source lives in `deepspeech.ios`; this repo exists so consuming apps can pull in the compiled binaries via SPM without cloning that whole project (C++/Kaldi source, build scripts, model data, etc.).

Both xcframeworks are always bundled together — installing `ASR` gets you both.

---

## Installation

In your project's `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/appareo-systems/ASR.git", .upToNextMajor(from: "1.0.0"))
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

## Versioning

Each release here is tagged with the same version number as the `deepspeech.ios` commit that produced it, so you can always trace a given `ASR` release back to the exact source that built it. When cutting a release, tag both repos with matching version numbers.

## How to update

1. In [`deepspeech.ios`](https://github.com/appareo-systems/deepspeech.ios), build fresh binaries by running `./buildFramework.sh`. That leaves you with `Frameworks/ASR.xcframework` (freshly built from source) and `Vendor/eesen_carthage.xcframework` (a vendored binary dependency) in that repo.

2. Before publishing, test the new binaries locally against a real consuming app — see the ["Testing locally before publishing a release"](https://github.com/appareo-systems/deepspeech.ios#testing-locally-before-publishing-a-release) section of the `deepspeech.ios` README, which walks through pointing this package's `binaryTarget`s at a local path instead of a release URL.

3. Once you're happy with the results, zip each xcframework:

```sh
# Keep the parent folder name in the archive (important!)
ditto -c -k --keepParent ASR.xcframework ASR.xcframework.zip
ditto -c -k --keepParent eesen_carthage.xcframework eesen_carthage.xcframework.zip
```

4. Calculate checksums of each:

```sh
swift package compute-checksum ASR.xcframework.zip
swift package compute-checksum eesen_carthage.xcframework.zip
```

5. Update `Package.swift` with the new checksums, commit and push.

6. Tag the commit that has the new checksums with your new version number (ex: `1.2.3`) — and tag the `deepspeech.ios` commit you built from with the same version.

7. In GitHub, add a new release and choose this tag, then upload the two zipped xcframeworks.
