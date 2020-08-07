// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GCDWebServer",
    platforms: [
        .iOS(.v8),
        .tvOS(.v9),
        .macOS(.v10_10)
    ],
    products: [
        .library(
            name: "GCDWebServerStatic",
            type: .static,
            targets: ["GCDWebServers"]),
        .library(
            name: "GCDWebServers",
            type: .dynamic,
            targets: ["GCDWebServers"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "GCDWebServers",
            dependencies: [],
            path: "GCDWebServer",
            sources: ["Core", "Requests", "Responses"],
            publicHeadersPath: "",
            cSettings: [
                .headerSearchPath("Core"),
                .headerSearchPath("Requests"),
                .headerSearchPath("Responses")
            ])
    ]
)
