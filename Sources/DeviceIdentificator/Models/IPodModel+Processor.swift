import Foundation

public extension DeviceModel.IPodModel {
    var processor: DeviceModel.Processor {
        switch self {
        case .iPodTouch1G: return .APL0098
        case .iPodTouch2G: return .APL0278
        case .iPodTouch3G: return .APL2298
        case .iPodTouch4G: return .appleA4
        case .iPodTouch5G: return .appleA5
        case .iPodTouch6G: return .appleA8
        case .iPodTouch7G: return .appleA10Fusion
        }
    }
}
