// swift-tools-version:5.3.0

import PackageDescription

let package = Package(
    name: "Tweaking",
    platforms: [
        .iOS("15")
    ],
    products: [
        .library(
            name: "TweakEmitterImpl",
            targets: [
                "TweakEmitterImpl"
            ]
        ),
        .library(
            name: "Tweaking",
            targets: [
                "Tweaking"
            ]
        )
    ],
    dependencies: [
        .package(name: "Core", url: "https://github.com/kutchie-pelaez-packages/Core.git", .branch("master"))
    ],
    targets: [
        .target(
            name: "TweakEmitterImpl",
            dependencies: [
                .product(name: "Core", package: "Core"),
                .target(name: "Tweaking")
            ]
        ),
        .target(name: "Tweaking")
    ]
)
