import Foundation
#if os(watchOS)
    import WatchKit
#endif

public indirect enum DeviceModel: Equatable, Hashable, RawRepresentable, CaseIterable, CustomStringConvertible {
    public static let current: DeviceModel = {
        #if os(macOS)
            let service = IOServiceGetMatchingService(kIOMasterPortDefault,
                                                      IOServiceMatching("IOPlatformExpertDevice"))
            var modelIdentifier: String?
            if let modelData = IORegistryEntryCreateCFProperty(service, "model" as CFString, kCFAllocatorDefault, 0).takeRetainedValue() as? Data {
                modelIdentifier = String(data: modelData, encoding: .utf8)?.trimmingCharacters(in: .controlCharacters)
            }
            IOObjectRelease(service)
            return DeviceModel(deviceIdentifier: modelIdentifier ?? "Unknown Mac")
        #elseif os(watchOS)
            var size: size_t = 0
            sysctlbyname("hw.machine", nil, &size, nil, 0)
            var machine = [CChar](repeating: 0, count: size)
            sysctlbyname("hw.machine", &machine, &size, nil, 0)
            let watchModel = String(cString: &machine, encoding: String.Encoding.utf8)?.trimmingCharacters(in: .whitespacesAndNewlines)
            return DeviceModel(deviceIdentifier: watchModel ?? "Unknown Watch")
        #else
            var systemInfo = utsname()
            uname(&systemInfo)
            let machineMirror = Mirror(reflecting: systemInfo.machine)
            let systemIdentifier = machineMirror.children.reduce("") { identifier, element in
                guard let value = element.value as? Int8, value != 0 else { return identifier }
                return identifier + String(UnicodeScalar(UInt8(value)))
            }
            return DeviceModel(deviceIdentifier: systemIdentifier)
        #endif
    }()
    
    case iPhone1G
    case iPhone3G
    case iPhone3GS
    case iPhone4(IPhoneVariant)
    case iPhone4S
    case iPhone5(IPhoneVariant)
    case iPhone5C(IPhoneVariant)
    case iPhone5S(IPhoneVariant)
    case iPhone6
    case iPhone6Plus
    case iPhone6S
    case iPhone6SPlus
    case iPhoneSE
    case iPhone7(IPhoneVariant)
    case iPhone7Plus(IPhoneVariant)
    case iPhone8(IPhoneVariant)
    case iPhone8Plus(IPhoneVariant)
    case iPhoneX(IPhoneVariant)
    case iPhoneXR
    case iPhoneXS
    case iPhoneXSMax
    case iPhone11
    case iPhone11Pro
    case iPhone11ProMax
    case iPhoneSE2G
    case iPhone12Mini
    case iPhone12
    case iPhone12Pro
    case iPhone12ProMax
    case iPhone13Pro
    case iPhone13ProMax
    case iPhone13Mini
    case iPhone13
    case iPhoneSE3G
    case iPhone14
    case iPhone14Plus
    case iPhone14Pro
    case iPhone14ProMax
    case iPhone15
    case iPhone15Plus
    case iPhone15Pro
    case iPhone15ProMax

    case iPodTouch1G
    case iPodTouch2G
    case iPodTouch3G
    case iPodTouch4G
    case iPodTouch5G
    case iPodTouch6G
    case iPodTouch7G

    case iPad1G(IPadVariant)
    case iPad2G(IPadVariant)
    case iPad3G(IPadVariant)
    case iPad4G(IPadVariant)
    case iPad5G(IPadVariant)
    case iPad6G(IPadVariant)
    case iPad7G(IPadVariant)
    case iPad8G(IPadVariant)
    case iPad9G(IPadVariant)
    case iPad10G(IPadVariant)

    case iPadMini1(IPadVariant)
    case iPadMini2(IPadVariant)
    case iPadMini3(IPadVariant)
    case iPadMini4(IPadVariant)
    case iPadMini5(IPadVariant)
    case iPadMini6(IPadVariant)

    case iPadAir1G(IPadVariant)
    case iPadAir2G(IPadVariant)
    case iPadAir3G(IPadVariant)
    case iPadAir4G(IPadVariant)
    case iPadAir5G(IPadVariant)

    case iPadPro9d7inch1G(IPadVariant)
    case iPadPro10d5inch1G(IPadVariant)
    case iPadPro12d9inch1G(IPadVariant)
    case iPadPro12d9inch2G(IPadVariant)
    case iPadPro12d9inch3G(IPadVariant)
    case iPadPro12d9inch4G(IPadVariant)
    case iPadPro12d9inch5G(IPadVariant)
    case iPadPro12d9inch6G(IPadVariant)
    case iPadPro11inch(IPadVariant)
    case iPadPro11inch2G(IPadVariant)
    case iPadPro11inch3G(IPadVariant)
    case iPadPro11inch4G(IPadVariant)

    case appleTV4G
    case appleTV4K
    case appleTV4K2G
    case appleTV4K3G
    
    case appleWatch38mm
    case appleWatch42mm
    case appleWatch1S38mm
    case appleWatch1S42mm
    case appleWatch2S38mm
    case appleWatch2S42mm
    case appleWatch3S38mm(WatchVariant)
    case appleWatch3S42mm(WatchVariant)
    case appleWatch4S40mm(WatchVariant)
    case appleWatch4S44mm(WatchVariant)
    case appleWatch5S40mm(WatchVariant)
    case appleWatch5S44mm(WatchVariant)
    case appleWatch6S40mm(WatchVariant)
    case appleWatch6S44mm(WatchVariant)
    case appleWatch7S41mm(WatchVariant)
    case appleWatch7S45mm(WatchVariant)
    case appleWatch8S41mm(WatchVariant)
    case appleWatch8S45mm(WatchVariant)
    case appleWatch9S41mm(WatchVariant)
    case appleWatch9S45mm(WatchVariant)
    case appleWatchSE40mm(WatchVariant)
    case appleWatchSE44mm(WatchVariant)
    case appleWatchSE2G40mm(WatchVariant)
    case appleWatchSE2G44mm(WatchVariant)
    case appleWatchUltra
    case appleWatchUltra2

    case iPadSimulator(DeviceModel, arch: String)
    case iPhoneSimulator(DeviceModel, arch: String)
    case appleTVSimulator(DeviceModel, arch: String)
    case watchSimulator(DeviceModel, arch: String)

    case iPhoneUnknown(model: String)
    case iPadUnknown(model: String)
    case iPodUnknown(model: String)
    case appleTVUnknown(model: String)
    case macUnknown(model: String)
    case unknown(model: String)
    
    case macCatalyst
    case macDesignedForIpad
    case mac(MacVariant)
}

public func == (lhs: DeviceModel, rhs: DeviceModel) -> Bool {
    return lhs.rawValue == rhs.rawValue
}
