import Foundation

public extension DeviceModel {
    static var allCases: [DeviceModel] {
        let allRealModels: [DeviceModel] =
        IPodModel.allCases.map { .iPod($0) } +
        IPhoneModel.allCases.map { .iPhone($0) } +
        IPadModel.allCases.map { .iPad($0) } +
        AppleWatchModel.allCases.map { .appleWatch($0) } +
        AppleTVModel.allCases.map { .appleTV($0) } +
        MacModel.allCases.map { .mac($0) }
        
        return 
            allRealModels +
            allRealModels.map { .simulator($0, arch: "arch") } +
            [
                .macCatalyst,
                .macDesignedForIpad
            ]
    }
}
