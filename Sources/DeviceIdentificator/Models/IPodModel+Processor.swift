import Foundation

public extension DeviceModel.IPodModel {
    var processor: DeviceModel.Processor {
        switch self {
        case .touch1G: return .APL0098
        case .touch2G: return .APL0278
        case .touch3G: return .APL2298
        case .touch4G: return .appleA4
        case .touch5G: return .appleA5
        case .touch6G: return .appleA8
        case .touch7G: return .appleA10Fusion
        }
    }
}
