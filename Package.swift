// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DeviceIdentificator",
    platforms: [
        .watchOS(.v6),
        .tvOS(.v14),
        .visionOS(.v1),
        .iOS(.v14),
        .macCatalyst(.v14),
        .macOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "DeviceIdentificator",
            targets: ["DeviceIdentificator"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "DeviceIdentificator"),
        .testTarget(
            name: "DeviceIdentificatorTests",
            dependencies: ["DeviceIdentificator"]),
    ]
)

let swiftSettings: [SwiftSetting] = [
    .enableUpcomingFeature("BareSlashRegexLiterals"),
]

for target in package.targets {
    target.swiftSettings = target.swiftSettings ?? []
    target.swiftSettings?.append(contentsOf: swiftSettings)
}
