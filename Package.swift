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
            targets: ["CUELiveWrapper", "CUEBluetooth", "engine", "TrueTime", "MQTTClient", "SocketRocket"]
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
            url: "https://s3.amazonaws.com/swift-package-manager/CUELive/3.4.16-remove-lottie/CUELive.3.4.16-remove-lottie.xcframework.zip",
            checksum: "402ee31e752df0a57c08ed67a6546a028ce6ead4d573ba28c7d71d09c643ecdd"
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
            name: "TrueTime",
            url: "https://s3.amazonaws.com/swift-package-manager/TrueTime/5.1.0/TrueTime.5.1.0.xcframework.zip",
            checksum: "07b957755b028bfc325645bff7c75fd1bfdc548e6715cae6d3921145e11a10b3"
        ),
        .binaryTarget(
            name: "MQTTClient",
            url: "https://s3.amazonaws.com/swift-package-manager/MQTTClient/0.15.3/MQTTClient.0.15.3.xcframework.zip",
            checksum: "933cb46fc849b595256ac36e0884459bf0516bc62fcf095c4f780042f8579393"
        ),
        .binaryTarget(
            name: "SocketRocket",
            url: "https://s3.amazonaws.com/swift-package-manager/SocketRocket/0.5.1/SocketRocket.0.5.1.xcframework.zip",
            checksum: "832105e93a00508e068d324645fbd3966eb9f28ab4d909f87686e9e432be517c"
        )
    ]
)
