import UIKit

public extension UIDevice {
    @objc
    var deviceModelName: NSString {
        return deviceModel.name as NSString
    }
}

public extension UIDevice {
    public var deviceModel: DeviceModel {
        var systemInfo = utsname()
        uname(&systemInfo)

        let machine = systemInfo.machine
        let mirror = Mirror(reflecting: machine)
        var identifier = ""

        for child in mirror.children {
            if let value = child.value as? Int8, value != 0 {
                let escaped = UnicodeScalar(UInt8(value)).escaped(asASCII: false)
                identifier.append(escaped)
            }
        }

        return parseDeviceModel(identifier)
    }
}

public enum DeviceModel {

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

    case iPadPro9inch1G
    case iPadPro12inch1G

    case iPadSimulator
    case iPhoneSimulator

    case iPhoneUnknown(model: String)
    case iPadUnknown(model: String)
    case iPodUnknown(model: String)
    case unknown(model: String)

    public var name: String {
        // IMPORTANTE: Es importante que estos nombres no se cambien, afectan a las analíticas.
        switch self {
        case .iPhone1G: return "iPhone 1G"
        case .iPhone3G: return "iPhone 3G"
        case .iPhone3GS: return "iPhone 3GS"
        case .iPhone4: return "iPhone 4"
        case .iPhone4S: return "iPhone 4S"
        case .iPhone5: return "iPhone 5"
        case .iPhone5C: return "iPhone 5C"
        case .iPhone5S: return "iPhone 5S"
        case .iPhone6: return "iPhone 6"
        case .iPhone6Plus: return "iPhone 6 Plus"
        case .iPhone6S: return "iPhone 6S"
        case .iPhone6SPlus: return "iPhone 6S Plus"
        case .iPhoneSE: return "iPhone SE"
        case .iPhone7: return "iPhone 7"
        case .iPhone7Plus: return "iPhone 7 Plus"
        case .iPhone8: return "iPhone 8"
        case .iPhone8Plus: return "iPhone 8 Plus"
        case .iPhoneX: return "iPhone X"

        case .iPodTouch1G: return "iPod touch 1G"
        case .iPodTouch2G: return "iPod touch 2G"
        case .iPodTouch3G: return "iPod touch 3G"
        case .iPodTouch4G: return "iPod touch 4G"
        case .iPodTouch5G: return "iPod touch 5G"
        case .iPodTouch6G: return "iPod touch 6G"

        case .iPad1G: return "iPad 1G"
        case .iPad2G: return "iPad 2G"
        case .iPad3G: return "iPad 3G"
        case .iPad4G: return "iPad 4G"
        case .iPadMini1: return "iPad Mini"
        case .iPadMini2: return "iPad Mini 2"
        case .iPadMini3: return "iPad Mini 3"
        case .iPadMini4: return "iPad Mini 4"
        case .iPadAir1G: return "iPad Air"
        case .iPadAir2G: return "iPad Air 2"

        case .iPadPro9inch1G: return "iPad Pro 9.7-Inch 1G"
        case .iPadPro12inch1G: return "iPad Pro 12.9-Inch 1G"

        case .iPadSimulator: return "iPad Simulator"
        case .iPhoneSimulator: return "iPhone Simulator"

        case .iPhoneUnknown(let id): return "Unknown iPhone (\(id))"
        case .iPadUnknown(let id): return "Unknown iPad (\(id))"
        case .iPodUnknown(let id): return "Unknown iPod (\(id))"
        case .unknown(let id): return "Unknown iOS device (\(id))"
        }
    }
}

fileprivate func parseDeviceModel(_ identifier: String) -> DeviceModel {

    if identifier == "i386" || identifier == "x86_64" {
        let smallerScreen = UIScreen.main.bounds.size.width < 768
        return smallerScreen ? .iPhoneSimulator : .iPadSimulator
    }

    switch identifier {
    case "iPhone1,1": return .iPhone1G
    case "iPhone1,2": return .iPhone3G
    case "iPhone2,1": return .iPhone3GS
    case "iPhone3,1", "iPhone3,2", "iPhone3,3": return .iPhone4
    case "iPhone4,1": return .iPhone4S
    case "iPhone5,1", "iPhone5,2": return .iPhone5
    case "iPhone5,3", "iPhone5,4": return .iPhone5C
    case "iPhone6,1", "iPhone6,2": return .iPhone5S
    case "iPhone7,2": return .iPhone6
    case "iPhone7,1": return .iPhone6Plus
    case "iPhone8,1": return .iPhone6S
    case "iPhone8,2": return .iPhone6SPlus
    case "iPhone8,4": return .iPhoneSE
    case "iPhone9,1": return .iPhone7
    case "iPhone9,2": return .iPhone7Plus
    case "iPhone9,3": return .iPhone7
    case "iPhone9,4": return .iPhone7Plus
    case "iPhone10,1", "iPhone10,4": return .iPhone8
    case "iPhone10,2", "iPhone10,5": return .iPhone8Plus
    case "iPhone10,3", "iPhone10,6": return .iPhoneX

    case "iPod1,1": return .iPodTouch1G
    case "iPod2,1": return .iPodTouch2G
    case "iPod3,1": return .iPodTouch3G
    case "iPod4,1": return .iPodTouch4G
    case "iPod5,1": return .iPodTouch5G
    case "iPod7,1": return .iPodTouch6G

    case "iPad1,1", "iPad1,2": return .iPad1G
    case "iPad2,1", "iPad2,2", "iPad2,3", "iPad2,4": return .iPad2G
    case "iPad3,1", "iPad3,2", "iPad3,3": return .iPad3G
    case "iPad3,4", "iPad3,5", "iPad3,6": return .iPad4G
    case "iPad2,5", "iPad2,6", "iPad2,7": return .iPadMini1
    case "iPad4,4", "iPad4,5", "iPad4,6": return .iPadMini2
    case "iPad4,7", "iPad4,8", "iPad4,9": return .iPadMini3
    case "iPad5,1", "iPad5,2": return .iPadMini4

    case "iPad4,1", "iPad4,2", "iPad4,3": return .iPadAir1G
    case "iPad5,3", "iPad5,4": return .iPadAir2G

    case "iPad6,3", "iPad6,4": return .iPadPro9inch1G
    case "iPad6,7", "iPad6,8": return .iPadPro12inch1G

    default:
        if identifier.hasPrefix("iPhone") {
            return .iPhoneUnknown(model: identifier)
        }
        if identifier.hasPrefix("iPod") {
            return .iPodUnknown(model: identifier)
        }
        if identifier.hasPrefix("iPad") {
            return .iPadUnknown(model: identifier)
        }

        return .unknown(model: identifier)
    }
}
