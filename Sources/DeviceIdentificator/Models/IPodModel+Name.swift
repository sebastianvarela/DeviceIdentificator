import Foundation

public extension IPodModel {
    var name: String {
        switch self {
        case .iPodTouch1G: return "iPod touch 1G"
        case .iPodTouch2G: return "iPod touch 2G"
        case .iPodTouch3G: return "iPod touch 3G"
        case .iPodTouch4G: return "iPod touch 4G"
        case .iPodTouch5G: return "iPod touch 5G"
        case .iPodTouch6G: return "iPod touch 6G"
        case .iPodTouch7G: return "iPod touch 7G"
        }
    }
}
