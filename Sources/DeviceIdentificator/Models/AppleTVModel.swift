import Foundation

public extension DeviceModel {
    enum AppleTVModel: String, Equatable, CaseIterable {
        case tvHD      = "AppleTV5,3"
        case tv4K      = "AppleTV6,2"
        case tv4K2G    = "AppleTV11,1"
        case tv4K3G    = "AppleTV14,1"
    }
}
