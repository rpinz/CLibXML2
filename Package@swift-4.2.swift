// swift-tools-version:4.2

import PackageDescription 

let package = Package(
    name: "CLibXML2",
    products: [
        .library(name: "CLibXML2",
                 targets: ["CLibXML2"])
    ],
    targets: [
        .systemLibrary(
            name: "CLibXML2",
            pkgConfig: "libxml-2.0",
            providers: [
                .brew(["libxml2"]),
                .apt(["libxml2-dev"])
            ]
        )
    ],
    swiftLanguageVersions: [
        .v4_2,
        .version("5")
    ]
)
