import Foundation
import UIKit

public enum DeviceModel: Equatable {
    case iPhone1G
    case iPhone3G
    case iPhone3GS
    case iPhone4
    case iPhone4S
    case iPhone5
    case iPhone5C
    case iPhone5S
    case iPhone6
    case iPhone6Plus
    case iPhone6S
    case iPhone6SPlus
    case iPhoneSE
    case iPhone7
    case iPhone7Plus
    case iPhone8
    case iPhone8Plus
    case iPhoneX

    case iPodTouch1G
    case iPodTouch2G
    case iPodTouch3G
    case iPodTouch4G
    case iPodTouch5G
    case iPodTouch6G

    case iPad1G
    case iPad2G
    case iPad3G
    case iPad4G
    case iPadMini1
    case iPadMini2
    case iPadMini3
    case iPadMini4
    case iPadAir1G
    case iPadAir2G

    case iPadPro9d7inch1G
    case iPadPro10d5inch1G
    case iPadPro12d9inch1G
    case iPadPro12d9inch2G

    case iPad5G
    case iPad6G

    case appleTV4G
    case appleTV4K

    case iPadSimulator
    case iPhoneSimulator
    case appleTVSimulator

    case iPhoneUnknown(model: String)
    case iPadUnknown(model: String)
    case iPodUnknown(model: String)
    case unknown(model: String)

    internal init(_ identifier: DeviceIdentifier) {
        guard let model = identifier.model else {
            if identifier.rawValue == "i386" || identifier.rawValue == "x86_64" {
                #if os(iOS)
                    let smallerScreen = UIScreen.main.bounds.size.width < 768
                    self = smallerScreen ? .iPhoneSimulator : .iPadSimulator
                #elseif os(tvOS)
                    self = .appleTVSimulator
                #endif
            } else if identifier.rawValue.hasPrefix("iPhone") {
                self = .iPhoneUnknown(model: identifier.rawValue)
            } else if identifier.rawValue.hasPrefix("iPod") {
                self = .iPodUnknown(model: identifier.rawValue)
            } else if identifier.rawValue.hasPrefix("iPad") {
                self = .iPadUnknown(model: identifier.rawValue)
            } else {
                self = .unknown(model: identifier.rawValue)
            }
            return
        }
        self = model
    }
}

public func == (lhs: DeviceModel, rhs: DeviceModel) -> Bool {
    return lhs.name == rhs.name
}
