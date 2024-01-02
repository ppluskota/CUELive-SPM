// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "CUELive",
    platforms: [
        .iOS(.v11),
    ],
    products: [
        .library(
            name: "CUELive",
            targets: ["CUELiveWrapper", "CUEBluetooth", "engine", "Lottie", "TrueTime", "MQTTClient", "SocketRocket"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "CUELiveWrapper",
            dependencies: [
                .target(name: "CUELive"),
            ],
            path: "CUELiveWrapper"
        ),
        .binaryTarget(
            name: "CUELive",
            url: "https://s3.amazonaws.com/swift-package-manager/binaries/CUELive/3.5.26/CUELive.xcframework.zip",
            checksum: "313a78bd23a37eddb712b892ecb24e7aee0787f80afdb466b0b19faa33e914a8"
        ),
        .binaryTarget(
            name: "CUEBluetooth",
            url: "https://s3.amazonaws.com/swift-package-manager/CUEBluetooth/0.0.12/CUEBluetooth.0.0.12.xcframework.zip",
            checksum: "7f352450c746ddcb70d69982c8b59edffe636ff2fda05e239f51f9158416214d"
        ),
        .binaryTarget(
            name: "engine",
            url: "https://s3.amazonaws.com/swift-package-manager/engine/1.46.7/engine.1.46.7.xcframework.zip",
            checksum: "ee1cb50708902f98f1a47dda846b5b188535487a2b39ac837e57ddfde6297e59"
        ),
        .binaryTarget(
            name: "Lottie",
            url: "https://s3.amazonaws.com/swift-package-manager/binaries/Lottie/4.1.3/Lottie.xcframework.zip",
            checksum: "31ab682ec2c7b49e8a59458f7e4cfa027a07d8ba962df0ddcb95909ce5a9693d"
        ),
        .binaryTarget(
            name: "TrueTime",
            url: "https://s3.amazonaws.com/swift-package-manager/TrueTime/5.1.0/TrueTime.5.1.0.xcframework.zip",
            checksum: "4bab1fc882c66a72a7cdd14d2de7aa2a958dec1d8911b623440646a611f0dc92"
        ),
        .binaryTarget(
            name: "MQTTClient",
            url: "https://s3.amazonaws.com/swift-package-manager/MQTTClient/0.15.3/MQTTClient.0.15.3.xcframework.zip",
            checksum: "c6392d6411652f7374f0bc20a6f46519a3ab3ef9ed047669c8a40861bb1fb173"
        ),
        .binaryTarget(
            name: "SocketRocket",
            url: "https://s3.amazonaws.com/swift-package-manager/SocketRocket/0.5.1/SocketRocket.0.5.1.xcframework.zip",
            checksum: "0a8e220d9b5391f14d0b6e5f90c31414500055d241e8b10fb58f1d91a4c5c0bd"
        )
    ]
)
