import Foundation

public extension DeviceModel {
    public var isSimulator: Bool {
        switch self {
        case .iPadSimulator, .iPhoneSimulator:
            return true
        default:
            return false
        }
    }
}
