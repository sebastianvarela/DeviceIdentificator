import UIKit

public extension UIDevice {
    var deviceModel: DeviceModel {
        var systemInfo = utsname()
        uname(&systemInfo)

        let machine = systemInfo.machine
        let mirror = Mirror(reflecting: machine)
        var systemIdentifier = ""

        for child in mirror.children {
            if let value = child.value as? Int8, value != 0 {
                let escaped = UnicodeScalar(UInt8(value)).escaped(asASCII: false)
                systemIdentifier.append(escaped)
            }
        }

        let deviceIdentifier = DeviceIdentifier(systemIdentifier)
        return DeviceModel(deviceIdentifier)
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
