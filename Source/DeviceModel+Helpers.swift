import Foundation

public extension DeviceModel {
    var isSimulator: Bool {
        switch self {
        case .iPadSimulator, .iPhoneSimulator, .appleTVSimulator:
            return true
        default:
            return false
        }
    }

    var isAppleTV: Bool {
        return name.hasPrefix("Apple TV")
    }

    var isIpad: Bool {
        return name.hasPrefix("iPad")
    }

    var isIphone: Bool {
        return name.hasPrefix("iPhone")
    }
}
