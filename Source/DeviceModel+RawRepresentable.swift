import Foundation
import UIKit

public extension DeviceModel {
    init(deviceIdentifier: String) {
        self = DeviceModel(rawValue: deviceIdentifier)!
    }

    init?(rawValue: String) {
        switch rawValue {
            
        // iPhones
        case "iPhone1,1": self = .iPhone1G
        case "iPhone1,2": self = .iPhone3G
        case "iPhone2,1": self = .iPhone3GS
        case "iPhone3,1": self = .iPhone4(.gsm)
        case "iPhone3,2": self = .iPhone4(.gsmRevA)
        case "iPhone3,3": self = .iPhone4(.cdma)
        case "iPhone4,1": self = .iPhone4S
        case "iPhone5,1": self = .iPhone5(.gsm)
        case "iPhone5,2": self = .iPhone5(.global)
        case "iPhone5,3": self = .iPhone5C(.gsm)
        case "iPhone5,4": self = .iPhone5C(.global)
        case "iPhone6,1": self = .iPhone5S(.gsm)
        case "iPhone6,2": self = .iPhone5S(.global)
        case "iPhone7,2": self = .iPhone6
        case "iPhone7,1": self = .iPhone6Plus
        case "iPhone8,1": self = .iPhone6S
        case "iPhone8,2": self = .iPhone6SPlus
        case "iPhone8,4": self = .iPhoneSE
        case "iPhone9,1": self = .iPhone7(.global)
        case "iPhone9,2": self = .iPhone7Plus(.global)
        case "iPhone9,3": self = .iPhone7(.gsm)
        case "iPhone9,4": self = .iPhone7Plus(.gsm)
        case "iPhone10,1": self = .iPhone8(.global)
        case "iPhone10,4": self = .iPhone8(.gsm)
        case "iPhone10,2": self = .iPhone8Plus(.global)
        case "iPhone10,5": self = .iPhone8Plus(.gsm)
        case "iPhone10,3": self = .iPhoneX(.global)
        case "iPhone10,6": self = .iPhoneX(.gsm)
        case "iPhone11,8": self = .iPhoneXR
        case "iPhone11,2": self = .iPhoneXS
        case "iPhone11,6": self = .iPhoneXSMax
        case "iPhone12,1": self = .iPhone11
        case "iPhone12,3": self = .iPhone11Pro
        case "iPhone12,5": self = .iPhone11ProMax
        case "iPhone12,8": self = .iPhoneSE2G
        case "iPhone13,1": self = .iPhone12Mini
        case "iPhone13,2": self = .iPhone12
        case "iPhone13,3": self = .iPhone12Pro
        case "iPhone13,4": self = .iPhone12ProMax
        case "iPhone14,2": self = .iPhone13Pro
        case "iPhone14,3": self = .iPhone13ProMax
        case "iPhone14,4": self = .iPhone13Mini
        case "iPhone14,5": self = .iPhone13
        case "iPhone14,6": self = .iPhoneSE3G
        case "iPhone14,7": self = .iPhone14
        case "iPhone14,8": self = .iPhone14Plus
        case "iPhone15,2": self = .iPhone14Pro
        case "iPhone15,3": self = .iPhone14ProMax
            
        // iPods
        case "iPod1,1": self = .iPodTouch1G
        case "iPod2,1": self = .iPodTouch2G
        case "iPod3,1": self = .iPodTouch3G
        case "iPod4,1": self = .iPodTouch4G
        case "iPod5,1": self = .iPodTouch5G
        case "iPod7,1": self = .iPodTouch6G
        case "iPod9,1": self = .iPodTouch7G
            
        // iPads
        case "iPad1,1": self = .iPad1G(.wifi)
        case "iPad1,2": self = .iPad1G(.celullar)
        case "iPad2,1": self = .iPad2G(.wifi)
        case "iPad2,2": self = .iPad2G(.gsm)
        case "iPad2,3": self = .iPad2G(.cdma)
        case "iPad2,4": self = .iPad2G(.newRevision)
        case "iPad3,1": self = .iPad3G(.wifi)
        case "iPad3,2": self = .iPad3G(.cdma)
        case "iPad3,3": self = .iPad3G(.gsm)
        case "iPad3,4": self = .iPad4G(.wifi)
        case "iPad3,5": self = .iPad4G(.gsm)
        case "iPad3,6": self = .iPad4G(.cdma)
        case "iPad6,11": self = .iPad5G(.wifi)
        case "iPad6,12": self = .iPad5G(.celullar)
        case "iPad7,5": self = .iPad6G(.wifi)
        case "iPad7,6": self = .iPad6G(.celullar)
        case "iPad7,11": self = .iPad7G(.wifi)
        case "iPad7,12": self = .iPad7G(.celullar)
        case "iPad11,6": self = .iPad8G(.wifi)
        case "iPad11,7": self = .iPad8G(.celullar)
        case "iPad12,1": self = .iPad9G(.wifi)
        case "iPad12,2": self = .iPad9G(.celullar)
        case "iPad13,18": self = .iPad10G(.wifi)
        case "iPad13,19": self = .iPad10G(.celullar)

        // iPad Minis
        case "iPad2,5": self = .iPadMini1(.wifi)
        case "iPad2,6": self = .iPadMini1(.gsm)
        case "iPad2,7": self = .iPadMini1(.cdma)
        case "iPad4,4": self = .iPadMini2(.wifi)
        case "iPad4,5": self = .iPadMini2(.gsmCdma)
        case "iPad4,6": self = .iPadMini2(.china)
        case "iPad4,7": self = .iPadMini3(.wifi)
        case "iPad4,8": self = .iPadMini3(.gsmCdma)
        case "iPad4,9": self = .iPadMini3(.china)
        case "iPad5,1": self = .iPadMini4(.wifi)
        case "iPad5,2": self = .iPadMini4(.celullar)
        case "iPad11,1": self = .iPadMini5(.wifi)
        case "iPad11,2": self = .iPadMini5(.celullar)
        case "iPad14,1": self = .iPadMini6(.wifi)
        case "iPad14,2": self = .iPadMini6(.celullar)

        // iPad Air
        case "iPad4,1": self = .iPadAir1G(.wifi)
        case "iPad4,2": self = .iPadAir1G(.gsmCdma)
        case "iPad4,3": self = .iPadAir1G(.china)
        case "iPad5,3": self = .iPadAir2G(.wifi)
        case "iPad5,4": self = .iPadAir2G(.celullar)
        case "iPad11,3": self = .iPadAir3G(.wifi)
        case "iPad11,4": self = .iPadAir3G(.celullar)
        case "iPad13,1": self = .iPadAir4G(.wifi)
        case "iPad13,2": self = .iPadAir4G(.celullar)
        case "iPad13,16": self = .iPadAir5G(.wifi)
        case "iPad13,17": self = .iPadAir5G(.celullar)

        // iPad Pro
        case "iPad6,3": self = .iPadPro9d7inch1G(.wifi)
        case "iPad6,4": self = .iPadPro9d7inch1G(.celullar)
        case "iPad6,7": self = .iPadPro12d9inch1G(.wifi)
        case "iPad6,8": self = .iPadPro12d9inch1G(.celullar)
        case "iPad7,3": self = .iPadPro10d5inch1G(.wifi)
        case "iPad7,4": self = .iPadPro10d5inch1G(.celullar)
        case "iPad7,1": self = .iPadPro12d9inch2G(.wifi)
        case "iPad7,2": self = .iPadPro12d9inch2G(.celullar)
        case "iPad8,1": self = .iPadPro11inch(.wifi)
        case "iPad8,2": self = .iPadPro11inch(.wifiTera)
        case "iPad8,3": self = .iPadPro11inch(.celullar)
        case "iPad8,4": self = .iPadPro11inch(.celullarTera)
        case "iPad8,9": self = .iPadPro11inch2G(.wifi)
        case "iPad8,10": self = .iPadPro11inch2G(.celullar)
        case "iPad8,5": self = .iPadPro12d9inch3G(.wifi)
        case "iPad8,6": self = .iPadPro12d9inch3G(.wifiTera)
        case "iPad8,7": self = .iPadPro12d9inch3G(.celullar)
        case "iPad8,8": self = .iPadPro12d9inch3G(.celullarTera)
        case "iPad8,11": self = .iPadPro12d9inch4G(.wifi)
        case "iPad8,12": self = .iPadPro12d9inch4G(.celullar)
        case "iPad13,4": self = .iPadPro11inch3G(.wifi)
        case "iPad13,5": self = .iPadPro11inch3G(.wifiTera)
        case "iPad13,6": self = .iPadPro11inch3G(.celullar)
        case "iPad13,7": self = .iPadPro11inch3G(.celullarTera)
        case "iPad13,8": self = .iPadPro12d9inch5G(.wifi)
        case "iPad13,9": self = .iPadPro12d9inch5G(.wifiTera)
        case "iPad13,10": self = .iPadPro12d9inch5G(.celullar)
        case "iPad13,11": self = .iPadPro12d9inch5G(.celullarTera)
        case "iPad14,3": self = .iPadPro11inch4G(.wifi)
        case "iPad14,4": self = .iPadPro11inch4G(.celullar)
        case "iPad14,5": self = .iPadPro12d9inch6G(.wifi)
        case "iPad14,6": self = .iPadPro12d9inch6G(.celullar)
            
        // Apple TV
        case "AppleTV5,3": self = .appleTV4G
        case "AppleTV6,2": self = .appleTV4K
        case "AppleTV11,1": self = .appleTV4K2G
        case "AppleTV14,1": self = .appleTV4K3G

        // Simulator
        case "i386", "x86_64", "arm64":
            let simulatorIdentifierValue = ProcessInfo().environment["SIMULATOR_MODEL_IDENTIFIER"] ?? "Unknown"
            let simulatorModel = DeviceModel(rawValue: simulatorIdentifierValue) ?? .unknown(model: simulatorIdentifierValue)
            #if os(iOS)
                let smallerScreen = UIScreen.main.bounds.size.width < 768
                self = smallerScreen ?
                    .iPhoneSimulator(simulatorModel, arch: rawValue) :
                    .iPadSimulator(simulatorModel, arch: rawValue)
            #elseif os(tvOS)
                self = .appleTVSimulator(simulatorIdentifierValue, arch: rawValue)
            #endif

        default:
            if rawValue.hasPrefix("iPhone") {
                self = .iPhoneUnknown(model: rawValue)
            } else if rawValue.hasPrefix("iPod") {
                self = .iPodUnknown(model: rawValue)
            } else if rawValue.hasPrefix("iPad") {
                self = .iPadUnknown(model: rawValue)
            } else {
                self = .unknown(model: rawValue)
            }
        }
    }
    
    var rawValue: String {
        switch self {
        // iPhone
        case .iPhone1G: return "iPhone1,1"
        case .iPhone3G: return "iPhone1,2"
        case .iPhone3GS: return "iPhone2,1"
        case .iPhone4(.gsm): return "iPhone3,1"
        case .iPhone4(.gsmRevA): return "iPhone3,2"
        case .iPhone4(.cdma): return "iPhone3,3"
        case .iPhone4S: return "iPhone4,1"
        case .iPhone5(.gsm): return "iPhone5,1"
        case .iPhone5(.global): return "iPhone5,2"
        case .iPhone5C(.gsm): return "iPhone5,3"
        case .iPhone5C(.global): return "iPhone5,4"
        case .iPhone5S(.gsm): return "iPhone6,1"
        case .iPhone5S(.global): return "iPhone6,2"
        case .iPhone6: return "iPhone7,2"
        case .iPhone6Plus: return "iPhone7,1"
        case .iPhone6S: return "iPhone8,1"
        case .iPhone6SPlus: return "iPhone8,2"
        case .iPhoneSE: return "iPhone8,4"
        case .iPhone7(.global): return "iPhone9,1"
        case .iPhone7(.gsm): return "iPhone9,3"
        case .iPhone7Plus(.global): return "iPhone9,2"
        case .iPhone7Plus(.gsm): return "iPhone9,4"
        case .iPhone8(.global): return "iPhone10,1"
        case .iPhone8(.gsm): return "iPhone10,4"
        case .iPhone8Plus(.global): return "iPhone10,2"
        case .iPhone8Plus(.gsm): return "iPhone10,5"
        case .iPhoneX(.global): return "iPhone10,3"
        case .iPhoneX(.gsm): return "iPhone10,6"
        case .iPhoneXR: return "iPhone11,8"
        case .iPhoneXS: return "iPhone11,2"
        case .iPhoneXSMax: return "iPhone11,6"
        case .iPhone11: return "iPhone12,1"
        case .iPhone11Pro: return "iPhone12,3"
        case .iPhone11ProMax: return "iPhone12,5"
        case .iPhoneSE2G: return "iPhone12,8"
        case .iPhone12Mini: return "iPhone13,1"
        case .iPhone12: return "iPhone13,2"
        case .iPhone12Pro: return "iPhone13,3"
        case .iPhone12ProMax: return "iPhone13,4"
        case .iPhone13Pro: return "iPhone14,2"
        case .iPhone13ProMax: return "iPhone14,3"
        case .iPhone13Mini: return "iPhone14,4"
        case .iPhone13: return "iPhone14,5"
        case .iPhoneSE3G: return "iPhone14,6"
        case .iPhone14: return "iPhone14,7"
        case .iPhone14Plus: return "iPhone14,8"
        case .iPhone14Pro: return "iPhone15,2"
        case .iPhone14ProMax: return "iPhone15,3"
            
        // iPods
        case .iPodTouch1G: return "iPod1,1"
        case .iPodTouch2G: return "iPod2,1"
        case .iPodTouch3G: return "iPod3,1"
        case .iPodTouch4G: return "iPod4,1"
        case .iPodTouch5G: return "iPod5,1"
        case .iPodTouch6G: return "iPod7,1"
        case .iPodTouch7G: return "iPod9,1"
            
        // iPads
        case .iPad1G: return "iPad1,1" //, "iPad1,2"
        case .iPad2G: return "iPad2,1" //, "iPad2,2", "iPad2,3", "iPad2,4"
        case .iPad3G: return "iPad3,1" //, "iPad3,2", "iPad3,3"
        case .iPad4G: return "iPad3,4" //, "iPad3,5", "iPad3,6"
        case .iPad5G: return "iPad6,11" //, "iPad6,12"
        case .iPad6G: return "iPad7,5" //, "iPad7,6"
        case .iPad7G: return "iPad7,11" //, "iPad7,12"
        case .iPad8G: return "iPad11,6" //, "iPad11,7"
        case .iPad9G: return "iPad12,1" //, "iPad12,2"
        case .iPad10G: return "iPad13,18" //, "iPad13,19"
            
        // iPad Minis
        case .iPadMini1: return "iPad2,5" //, "iPad2,6", "iPad2,7"
        case .iPadMini2: return "iPad4,4" //, "iPad4,5", "iPad4,6"
        case .iPadMini3: return "iPad4,7" //, "iPad4,8", "iPad4,9"
        case .iPadMini4: return "iPad5,1" //, "iPad5,2"
        case .iPadMini5: return "iPad11,1" //, "iPad11,2"
        case .iPadMini6: return "iPad14,1" //, "iPad14,2"
            
        // iPad Air
        case .iPadAir1G: return "iPad4,1" //, "iPad4,2", "iPad4,3"
        case .iPadAir2G: return "iPad5,3" //, "iPad5,4"
        case .iPadAir3G: return "iPad11,3" //, "iPad11,4"
        case .iPadAir4G: return "iPad13,1" //, "iPad13,2"
        case .iPadAir5G: return "iPad13,16" //, "iPad13,17"
            
        // iPad Pro
        case .iPadPro9d7inch1G: return "iPad6,3" //, "iPad6,4"
        case .iPadPro12d9inch1G: return "iPad6,7" //, "iPad6,8"
        case .iPadPro10d5inch1G: return "iPad7,3" //, "iPad7,4"
        case .iPadPro12d9inch2G: return "iPad7,1" //, "iPad7,2"
        case .iPadPro11inch: return "iPad8,1" //, "iPad8,2"
        //case .iPadPro11inch: return "iPad8,3" //, "iPad8,4"
        case .iPadPro11inch2G: return "iPad8,9" //, "iPad8,10"
        case .iPadPro12d9inch3G: return "iPad8,5" //, "iPad8,6"
        //case .iPadPro12d9inch3G: return "iPad8,7" //, "iPad8,8"
        case .iPadPro12d9inch4G: return "iPad8,11" //, "iPad8,12"
        case .iPadPro11inch3G: return "iPad13,4" //, "iPad13,5"
        //case .iPadPro11inch3G: return "iPad13,6" //, "iPad13,7"
        case .iPadPro12d9inch5G: return "iPad13,8" //, "iPad13,9"
        //case .iPadPro12d9inch5G: return "iPad13,10" //, "iPad13,11"
        case .iPadPro11inch4G: return "iPad14,3" //, "iPad14,4 "
        case .iPadPro12d9inch6G: return "iPad14,5" //, "iPad14,6 "

        case .appleTV4G: return "AppleTV5,3"
        case .appleTV4K: return "AppleTV6,2"
        case .appleTV4K2G: return "AppleTV11,1"
        case .appleTV4K3G: return "AppleTV14,1"
             
        case .iPadSimulator(_, let arch),
             .iPhoneSimulator(_, let arch),
             .appleTVSimulator(_, let arch):
            return arch
            
        case .iPhoneUnknown(let model),
             .iPadUnknown(let model),
             .iPodUnknown(let model),
             .unknown(let model):
            return model
 
        default:
            return "rawValue"
        }
    }
}
