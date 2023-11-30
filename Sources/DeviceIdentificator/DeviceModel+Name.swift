import Foundation

public extension DeviceModel {
    var name: String {
        switch self {
        
        // iPhones
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
        case .iPhoneXR: return "iPhone XR"
        case .iPhoneXS: return "iPhone XS"
        case .iPhoneXSMax: return "iPhone XS Max"
        case .iPhone11: return "iPhone 11"
        case .iPhone11Pro: return "iPhone 11 Pro"
        case .iPhone11ProMax: return "iPhone 11 Pro Max"
        case .iPhoneSE2G: return "iPhone SE 2G"
        case .iPhone12Mini: return "iPhone 12 Mini"
        case .iPhone12: return "iPhone 12"
        case .iPhone12Pro: return "iPhone 12 Pro"
        case .iPhone12ProMax: return "iPhone 12 Pro Max"
        case .iPhone13Pro: return "iPhone 13 Pro"
        case .iPhone13ProMax: return "iPhone 13 Pro Max"
        case .iPhone13Mini: return "iPhone 13 Mini"
        case .iPhone13: return "iPhone 13"
        case .iPhoneSE3G: return "iPhone SE 3G"
        case .iPhone14: return "iPhone 14"
        case .iPhone14Plus: return "iPhone 14 Plus"
        case .iPhone14Pro: return "iPhone 14 Pro"
        case .iPhone14ProMax: return "iPhone 14 Pro Max"
        case .iPhone15: return "iPhone 15"
        case .iPhone15Plus: return "iPhone 15 Plus"
        case .iPhone15Pro: return "iPhone 15 Pro"
        case .iPhone15ProMax: return "iPhone 15 Pro Max"

        // iPods Touch
        case .iPodTouch1G: return "iPod touch 1G"
        case .iPodTouch2G: return "iPod touch 2G"
        case .iPodTouch3G: return "iPod touch 3G"
        case .iPodTouch4G: return "iPod touch 4G"
        case .iPodTouch5G: return "iPod touch 5G"
        case .iPodTouch6G: return "iPod touch 6G"
        case .iPodTouch7G: return "iPod touch 7G"

        // iPads Regular
        case .iPad1G: return "iPad 1G"
        case .iPad2G: return "iPad 2G"
        case .iPad3G: return "iPad 3G"
        case .iPad4G: return "iPad 4G"
        case .iPad5G: return "iPad 5G"
        case .iPad6G: return "iPad 6G"
        case .iPad7G: return "iPad 7G"
        case .iPad8G: return "iPad 8G"
        case .iPad9G: return "iPad 9G"
        case .iPad10G: return "iPad 10G"

        // iPads Mini
        case .iPadMini1: return "iPad Mini"
        case .iPadMini2: return "iPad Mini 2"
        case .iPadMini3: return "iPad Mini 3"
        case .iPadMini4: return "iPad Mini 4"
        case .iPadMini5: return "iPad Mini 5"
        case .iPadMini6: return "iPad Mini 6"

        // iPads Air
        case .iPadAir1G: return "iPad Air"
        case .iPadAir2G: return "iPad Air 2"
        case .iPadAir3G: return "iPad Air 3"
        case .iPadAir4G: return "iPad Air 4"
        case .iPadAir5G: return "iPad Air 5"

        // iPads Pro
        case .iPadPro9d7inch1G: return "iPad Pro 9.7-Inch 1G"
        case .iPadPro10d5inch1G: return "iPad Pro 10.5-Inch 1G"
        case .iPadPro11inch: return "iPad Pro 11-Inch"
        case .iPadPro11inch2G: return "iPad Pro 11-Inch 2G"
        case .iPadPro11inch3G: return "iPad Pro 11-Inch 3G"
        case .iPadPro11inch4G: return "iPad Pro 11-Inch 4G"
        case .iPadPro12d9inch1G: return "iPad Pro 12.9-Inch 1G"
        case .iPadPro12d9inch2G: return "iPad Pro 12.9-Inch 2G"
        case .iPadPro12d9inch3G: return "iPad Pro 12.9-Inch 3G"
        case .iPadPro12d9inch4G: return "iPad Pro 12.9-Inch 4G"
        case .iPadPro12d9inch5G: return "iPad Pro 12.9-Inch 5G"
        case .iPadPro12d9inch6G: return "iPad Pro 12.9-Inch 6G"

        // TVs
        case .appleTV4G: return "Apple TV 4G"
        case .appleTV4K: return "Apple TV 4K"
        case .appleTV4K2G: return "Apple TV 4K 2G"
        case .appleTV4K3G: return "Apple TV 4K 3G"

        // Watches
        case .appleWatch38mm: return "Apple Watch Original 38mm"
        case .appleWatch42mm: return "Apple Watch Original 42mm"
        case .appleWatch1S38mm: return "Apple Watch Series 1 38mm"
        case .appleWatch1S42mm: return "Apple Watch Series 1 42mm"
        case .appleWatch2S38mm: return "Apple Watch Series 2 38mm"
        case .appleWatch2S42mm: return "Apple Watch Series 2 42mm"
        case .appleWatch3S38mm: return "Apple Watch Series 3 38mm"
        case .appleWatch3S42mm: return "Apple Watch Series 3 42mm"
        case .appleWatch4S40mm: return "Apple Watch Series 4 40mm"
        case .appleWatch4S44mm: return "Apple Watch Series 4 44mm"
        case .appleWatch5S40mm: return "Apple Watch Series 5 40mm"
        case .appleWatch5S44mm: return "Apple Watch Series 5 44mm"
        case .appleWatch6S40mm: return "Apple Watch Series 6 40mm"
        case .appleWatch6S44mm: return "Apple Watch Series 6 44mm"
        case .appleWatch7S41mm: return "Apple Watch Series 7 41mm"
        case .appleWatch7S45mm: return "Apple Watch Series 7 45mm"
        case .appleWatch8S41mm: return "Apple Watch Series 8 41mm"
        case .appleWatch8S45mm: return "Apple Watch Series 8 45mm"
        case .appleWatch9S41mm: return "Apple Watch Series 9 41mm"
        case .appleWatch9S45mm: return "Apple Watch Series 9 45mm"
        case .appleWatchSE40mm: return "Apple Watch SE1 40mm"
        case .appleWatchSE44mm: return "Apple Watch SE1 44mm"
        case .appleWatchSE2G40mm: return "Apple Watch SE2 40mm"
        case .appleWatchSE2G44mm: return "Apple Watch SE2 44mm"
        case .appleWatchUltra: return "Apple Watch Ultra 1"
        case .appleWatchUltra2: return "Apple Watch Ultra 2"
            
        case .iPadSimulator(let model, let arch): return "Simulator \(model.name) @ \(arch)"
        case .iPhoneSimulator(let model, let arch): return "Simulator \(model.name) @ \(arch)"
        case .appleTVSimulator(let model, let arch): return "Simulator \(model.name) @ \(arch)"
        case .watchSimulator(let model, let arch): return "Simulator \(model.name) @ \(arch)"

        case .iPhoneUnknown(let model): return "Unknown iPhone: \(model)"
        case .iPadUnknown(let model): return "Unknown iPad: \(model)"
        case .iPodUnknown(let model): return "Unknown iPod: \(model)"
        case .appleTVUnknown(let model): return "Unknown AppleTV: \(model)"
        case .unknown(let model): return "Unknown device: \(model)"
        case .macUnknown(let model): return "Unknown Mac: \(model)"
            
        case .macCatalyst: return "Mac Catalyst"
        case .macDesignedForIpad: return "Mac Designed for iPad"
        case .mac(let variant): return "Mac \(variant.name)"
        }
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
    }
}
