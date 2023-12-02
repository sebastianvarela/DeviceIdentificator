import Foundation

public extension DeviceModel {
    var isSimulator: Bool {
        switch self {
        case .simulator:
            return true
        default:
            return false
        }
    }

    var isAppleTV: Bool {
        switch self {
        case .appleTV, .simulator(.appleTV, _):
            return true
        default:
            return false
        }
    }

    var isIpad: Bool {
        switch self {
        case .iPad, .simulator(.iPad, _):
            return true
        default:
            return false
        }
    }

    var isIphone: Bool {
        switch self {
        case .iPhone, .simulator(.iPhone, _):
            return true
        default:
            return false
        }
    }
    
    var isWatch: Bool {
        switch self {
        case .appleWatch, .simulator(.appleWatch, _):
            return true
        default:
            return false
        }
    }
}
