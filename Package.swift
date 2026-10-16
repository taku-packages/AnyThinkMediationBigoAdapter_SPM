// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "AnyThinkMediationBigoAdapter",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "AnyThinkMediationBigoAdapter",
            targets: ["AnyThinkMediationBigoAdapterTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/TakuMediation-packages/AnyThinkiOS_SPM.git", from: "6.5.60"),
        .package(url: "https://github.com/bigo-ads/BigoADS-Swift-Package.git", from: "6.1.0")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkBigoAdapter",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/AnyThink_Release/iosnetwork_2/AnyThinkBigoAdapter/5.3.0.2.0/AnyThinkBigoAdapter-5.3.0.2.0.zip",
            checksum: "cf81fe156a7c0008b1cf4f252a98824b49306b0120a4fb9eb1f25d5747b6715b"
        ),
        .target(
            name: "AnyThinkMediationBigoAdapterTarget",
            dependencies: [
                "AnyThinkBigoAdapter",
                .product(name: "AnyThinkiOS", package: "AnyThinkiOS_SPM"),
                .product(name: "BigoADS", package: "BigoADS-Swift-Package")
            ],
            path: "Sources/AnyThinkMediationBigoAdapterTarget"
        )
    ]
)
