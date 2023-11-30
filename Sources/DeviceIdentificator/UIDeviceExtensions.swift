#if os(iOS) || os(tvOS) || os(visionOS)
import UIKit

public extension UIDevice {
    @available(*, deprecated, message: "You should use DeviceModel.current")
    var deviceModel: DeviceModel {
        DeviceModel.current
    }

    @objc
    var deviceModelName: NSString {
        DeviceModel.current.name as NSString
    }

    @objc
    var isSimulator: Bool {
        DeviceModel.current.isSimulator
    }

    @objc
    var isIpad: Bool {
        DeviceModel.current.isIpad
    }

    @objc
    var isIphone: Bool {
        DeviceModel.current.isIphone
    }

    @objc
    var isAppleTV: Bool {
        DeviceModel.current.isAppleTV
    }
}
#endif
