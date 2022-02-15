// swift-tools-version:5.3.0

import PackageDescription

let package = Package(
    name: "Tweaks",
    platforms: [
        .iOS("15")
    ],
    products: [
        .library(
            name: "TweakEmitter",
            targets: [
                "TweakEmitter"
            ]
        ),
        .library(
            name: "Tweak",
            targets: [
                "Tweak"
            ]
        )
    ],
    dependencies: [
        .package(name: "Core", url: "https://github.com/kutchie-pelaez-packages/Core.git", .branch("master"))
    ],
    targets: [
        .target(
            name: "TweakEmitter",
            dependencies: [
                .product(name: "Core", package: "Core"),
                .target(name: "Tweak")
            ]
        ),
        .target(name: "Tweak")
    ]
)
