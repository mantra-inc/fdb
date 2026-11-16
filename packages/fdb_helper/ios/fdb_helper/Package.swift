// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "fdb_helper",
    platforms: [.iOS("13.0")],
    products: [.library(name: "fdb-helper", targets: ["fdb_helper"])],
    targets: [
        .target(
            name: "fdb_helper",
            dependencies: ["FdbHelperNativeTap"],
            swiftSettings: [.define("FDB_HELPER_NATIVE_TAP_REAL", .when(configuration: .debug))]
        ),
        .target(
            name: "FdbHelperNativeTap",
            publicHeadersPath: ".",
            cSettings: [.define("FDB_HELPER_NATIVE_TAP_REAL", .when(configuration: .debug))]
        )
    ]
)
