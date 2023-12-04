import Foundation

public extension DeviceModel.IPadModel {
    var processor: DeviceModel.Processor {
        switch self {
        default:
            return .appleA10XFusion
        }
    }
}
