import Foundation

public enum PhoneVariant: String {
    case gsm
    case gsmRevA
    case cdma
    case global
}

public enum PadVariant: String {
    case wifi
    case celullar
    case wifiTera
    case celullarTera
    case gsm
    case gsmCdma
    case cdma
    case newRevision
    case global
    case china
}

public indirect enum DeviceModel: Equatable, Hashable, RawRepresentable, CaseIterable {
    case iPhone1G
    case iPhone3G
    case iPhone3GS
    case iPhone4(PhoneVariant)
    case iPhone4S
    case iPhone5(PhoneVariant)
    case iPhone5C(PhoneVariant)
    case iPhone5S(PhoneVariant)
    case iPhone6
    case iPhone6Plus
    case iPhone6S
    case iPhone6SPlus
    case iPhoneSE
    case iPhone7(PhoneVariant)
    case iPhone7Plus(PhoneVariant)
    case iPhone8(PhoneVariant)
    case iPhone8Plus(PhoneVariant)
    case iPhoneX(PhoneVariant)
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

    case iPodTouch1G
    case iPodTouch2G
    case iPodTouch3G
    case iPodTouch4G
    case iPodTouch5G
    case iPodTouch6G
    case iPodTouch7G

    case iPad1G(PadVariant)
    case iPad2G(PadVariant)
    case iPad3G(PadVariant)
    case iPad4G(PadVariant)
    case iPad5G(PadVariant)
    case iPad6G(PadVariant)
    case iPad7G(PadVariant)
    case iPad8G(PadVariant)
    case iPad9G(PadVariant)
    case iPad10G(PadVariant)

    case iPadMini1(PadVariant)
    case iPadMini2(PadVariant)
    case iPadMini3(PadVariant)
    case iPadMini4(PadVariant)
    case iPadMini5(PadVariant)
    case iPadMini6(PadVariant)

    case iPadAir1G(PadVariant)
    case iPadAir2G(PadVariant)
    case iPadAir3G(PadVariant)
    case iPadAir4G(PadVariant)
    case iPadAir5G(PadVariant)

    case iPadPro9d7inch1G(PadVariant)
    case iPadPro10d5inch1G(PadVariant)
    case iPadPro12d9inch1G(PadVariant)
    case iPadPro12d9inch2G(PadVariant)
    case iPadPro12d9inch3G(PadVariant)
    case iPadPro12d9inch4G(PadVariant)
    case iPadPro12d9inch5G(PadVariant)
    case iPadPro12d9inch6G(PadVariant)
    case iPadPro11inch(PadVariant)
    case iPadPro11inch2G(PadVariant)
    case iPadPro11inch3G(PadVariant)
    case iPadPro11inch4G(PadVariant)

    case appleTV4G
    case appleTV4K
    case appleTV4K2G
    case appleTV4K3G

    case iPadSimulator(DeviceModel, arch: String)
    case iPhoneSimulator(DeviceModel, arch: String)
    case appleTVSimulator(DeviceModel, arch: String)

    case iPhoneUnknown(model: String)
    case iPadUnknown(model: String)
    case iPodUnknown(model: String)
    case appleTVUnknown(model: String)
    case unknown(model: String)
}

public func == (lhs: DeviceModel, rhs: DeviceModel) -> Bool {
    return lhs.rawValue == rhs.rawValue
}
