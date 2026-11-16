# Temporary Langaku SwiftPM fork

Based on published fdb_helper 1.15.1 (MIT). Swift and Objective-C are separate SwiftPM targets. Private UIKit/IOKit tap injection is preprocessed out of release builds; Swift uses the existing release stub. SwiftPM Profile uses the release stub too.

Exit condition: when pub.dev fdb_helper supports SwiftPM with equivalent release isolation, verify Langaku Debug native tapping and inspect the Release-prod executable with nm and strings for private tap APIs, then replace the SHA-pinned git dependency with the published version and retire this fork. No upstream PR is planned.
