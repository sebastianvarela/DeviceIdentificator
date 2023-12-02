import Foundation

public extension AppleTVModel {
    var name: String {
        switch self {
        case .appleTV4G: return "Apple TV 4G"
        case .appleTV4K: return "Apple TV 4K"
        case .appleTV4K2G: return "Apple TV 4K 2G"
        case .appleTV4K3G: return "Apple TV 4K 3G"
        }
    }
}
