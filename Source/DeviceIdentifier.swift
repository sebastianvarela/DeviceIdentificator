import Foundation

internal struct DeviceIdentifier {
    private let identifier: String

    internal init(_ identifier: String) {
        self.identifier = identifier
    }

    internal var rawValue: String {
        return identifier
    }

    internal var model: DeviceModel? {
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

        default: return nil
        }
    }
}