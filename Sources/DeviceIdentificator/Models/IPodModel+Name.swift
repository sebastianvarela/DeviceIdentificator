import Foundation

public extension DeviceModel.IPodModel {
    var name: String {
        switch self {
        case .touch1G: return "iPod touch 1G"
        case .touch2G: return "iPod touch 2G"
        case .touch3G: return "iPod touch 3G"
        case .touch4G: return "iPod touch 4G"
        case .touch5G: return "iPod touch 5G"
        case .touch6G: return "iPod touch 6G"
        case .touch7G: return "iPod touch 7G"
        }
    }
}
