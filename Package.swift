// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.
/*
 * Copyright (c) Au10tix.
 * All rights reserved.
 *
 * This source code is licensed under the license found in the
 * LICENSE file in the root directory of this source tree.
 */

import PackageDescription
import Foundation

let package = Package(
    name: "au10tixnfcpassportkit-ios",
    products: [ 
        .library(name: "Au10tixNFCPassportKit", targets: ["Au10tixNFCPassportKit"])
    ],
    dependencies: [
        //https://swiftpackageindex.com/krzyzanowskim/OpenSSL
        .package(url: "https://github.com/krzyzanowskim/OpenSSL.git", .upToNextMinor(from: "3.1.4000"))
    ],
    targets: [
        .binaryTarget(
          name: "Au10tixNFCPassportKit",
          url: "https://github.com/au10tixmobile/Au10tixNFCPassportKit/archive/refs/tags/4.0.0.zip",
          checksum: "e974e35adde10bb8966efacb25cdb87358c07d5d1703d7f6d537031b32f20a8d"
        )
    ]
)
