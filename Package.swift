// swift-tools-version:4.2
import PackageDescription

let package = Package(
    name: "FlockKit",
    products: [
        .library(
            name: "FlockKit", 
            targets: ["Flock"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/jpsim/SourceKitten", from: "0.22.0"),
        .package(url: "https://github.com/kylef/PathKit", from: "0.9.2")
    ],
    targets: [
        .target(
            name: "Flock", 
            dependencies: ["SourceKittenFramework", "PathKit"]
        )
    ]
)
