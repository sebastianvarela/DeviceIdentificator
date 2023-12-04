import Foundation

public extension DeviceModel.MacModel {
    var processor: DeviceModel.Processor {
        switch self {
        case .miniM1: return .appleM1
        }
    }
}
