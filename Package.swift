// swift-tools-version:5.3
import PackageDescription
let package = Package(
    name: "Mdes",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(
            name: "Mdes",
            targets: ["Mdes"]),
    ],
    targets: [
        .binaryTarget(
            name: "Mdes",
            path: "Mdes.xcframework"
        ),
    ]
)
