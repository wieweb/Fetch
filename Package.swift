// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "Fetch",
    platforms: [
        .macOS(.v10_12),
        .iOS(.v11),
        .tvOS(.v11),
        .watchOS(.v3)
    ],
    products: [
        .library(name: "Fetch", targets: ["Fetch"])
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.0.0-beta.6"),
    ],
    targets: [
        .target(name: "Fetch", dependencies: ["Alamofire"], path: "Fetch/Code")
    ],
    swiftLanguageVersions: [.v5]
)
