import Foundation

public extension DeviceModel {
    public var isSimulator: Bool {
        switch self {
        case .iPadSimulator, .iPhoneSimulator, .appleTVSimulator:
            return true
        default:
            return false
        }
    }

    public var isAppleTV: Bool {
        return name.hasPrefix("Apple TV")
    }

    public var isIpad: Bool {
        return name.hasPrefix("iPad")
    }

    public var isIphone: Bool {
        return name.hasPrefix("iPhone")
    }
}
