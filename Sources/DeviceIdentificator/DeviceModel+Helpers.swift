import Foundation

public extension DeviceModel {
    var isSimulator: Bool {
        switch self {
        case .iPadSimulator, .iPhoneSimulator, .appleTVSimulator, .watchSimulator:
            return true
        default:
            return false
        }
    }

    var isAppleTV: Bool {
        return name.contains("Apple TV")
    }

    var isIpad: Bool {
        return name.contains("iPad")
    }

    var isIphone: Bool {
        return name.contains("iPhone")
    }
    
    var isWatch: Bool {
        return name.contains("Watch")
    }
}
