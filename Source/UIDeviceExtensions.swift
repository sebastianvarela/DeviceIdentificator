import UIKit

public extension UIDevice {
    var deviceModel: DeviceModel {
        var systemInfo = utsname()
        uname(&systemInfo)
        let machineMirror = Mirror(reflecting: systemInfo.machine)
        let systemIdentifier = machineMirror.children.reduce("") { identifier, element in
            guard let value = element.value as? Int8, value != 0 else { return identifier }
            return identifier + String(UnicodeScalar(UInt8(value)))
        }
        return DeviceModel(rawValue: systemIdentifier) ?? .unknown(model: systemIdentifier)
    }

    @objc
    var deviceModelName: NSString {
        return deviceModel.name as NSString
    }

    @objc
    var isSimulator: Bool {
        return deviceModel.isSimulator
    }

    @objc
    var isIpad: Bool {
        return deviceModel.isIpad
    }

    @objc
    var isIphone: Bool {
        return deviceModel.isIphone
    }

    @objc
    var isAppleTV: Bool {
        return deviceModel.isAppleTV
    }
}
