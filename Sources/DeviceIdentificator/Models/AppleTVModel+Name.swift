import Foundation

public extension DeviceModel.AppleTVModel {
    var name: String {
        switch self {
        case .tvHD:     return "Apple TV 4G"
        case .tv4K:     return "Apple TV 4K"
        case .tv4K2G:   return "Apple TV 4K 2G"
        case .tv4K3G: 	return "Apple TV 4K 3G"
        }
    }
}
