import Foundation

public extension DeviceModel.AppleTVModel {
    var processor: DeviceModel.Processor {
        switch self {
        case .tvHD:     return .appleA8
        case .tv4K:     return .appleA10XFusion
        case .tv4K2G:   return .appleA12Bionic
        case .tv4K3G:   return .appleA15Bionic
        }
    }
}
