import ProjectDescription
import ProjectDescriptionHelpers
import MyPlugin

/*
                +-------------+
                |             |
                |     App     | Contains MainApplication App target and MainApplication unit-test target
                |             |
         +------+-------------+-------+
         |         depends on         |
         |                            |
 +----v-----+                   +-----v-----+
 |          |                   |           |
 |   Kit    |                   |     UI    |   Two independent frameworks to share code and start modularising your app
 |          |                   |           |
 +----------+                   +-----------+

 */

// MARK: - Project

// Local plugin loaded
let localHelper = LocalHelper(name: "MyPlugin")

// Creates our project using a helper function defined in ProjectDescriptionHelpers
let project = Project(
     name: "GTN-Pulse",
     organizationName: "MyOrg",
     targets: [
         Target(
             name: "Base",
             destinations: .iOS,
             product: .app,
             bundleId: "com.nme.base",
             infoPlist: "Configs/Base-Info.plist",
             sources: ["Targets/Base/Sources/**"],
             resources: ["Targets/Base/Resources/**"],
             dependencies: [.external(name: "Base_SDK"), .external(name: "UI_Kit_Package")]
         ),
         Target(
             name: "Cus1",
             destinations: .iOS,
             product: .app,
             bundleId: "com.nme.cus1",
             infoPlist: "Configs/Cus1-Info.plist",
             sources: ["Targets/Cus1/Sources/**"],
             resources: ["Targets/Cus1/Resources/**"],
             dependencies: [.external(name: "Base_SDK"), .external(name: "UI_Kit_Package")]
         ),
         Target(
             name: "Cus2",
             destinations: .iOS,
             product: .app,
             bundleId: "com.nme.cus2",
             infoPlist: "Configs/Cus2-Info.plist",
             sources: ["Targets/Cus2/Sources/**"],
             resources: ["Targets/Cus2/Resources/**"],
             dependencies: [.external(name: "Base_SDK"), .external(name: "UI_Kit_Package")]
         ),
     ]
 )

/// import ProjectDescription
///
/// let project = Project(
///     name: "GTN-Pulse",
///     organizationName: "MyOrg",
///     targets: [
///         Target(
///             name: "Base",
///             platform: .iOS,
///             product: .app,
///             bundleId: "com.nme.base",
///             infoPlist: "Config/Base-Info.plist",
///             sources: ["Targets/Base/Sources/**"],
///             resources: ["Targets/Base/Resources/**"],
///             dependencies: []
///         ),
///         Target(
///             name: "Cus1",
///             platform: .iOS,
///             product: .app,
///             bundleId: "com.nme.cus1",
///             infoPlist: "Config/Cus1-Info.plist",
///             sources: ["Targets/Cus1/Sources/**"],
///             resources: ["Targets/Cus1/Resources/**"],
///             dependencies: []
///         ),
///         Target(
///             name: "Cus2",
///             platform: .iOS,
///             product: .app,
///             bundleId: "com.nme.cus2",
///             infoPlist: "Config/Cus2-Info.plist",
///             sources: ["Targets/Cus2/Sources/**"],
///             resources: ["Targets/Cus2/Resources/**"],
///             dependencies: []
///         ),
///     ]
/// )
/// ```
