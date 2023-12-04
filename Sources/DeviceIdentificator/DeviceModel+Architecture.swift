import Foundation

public extension DeviceModel {
    var architecture: String? {
        switch self {
        case .iPod(let model):
            return model.processor.architecture
        case .iPhone(let model):
            return model.processor.architecture
        case .iPad(let model):
            return model.processor.architecture
        case .appleWatch(let model):
            return model.processor.architecture
        case .appleTV(let model):
            return model.processor.architecture
        case .mac(let model):
            return model.processor.architecture
        case .macCatalyst:
            return "arm64"
        case .macDesignedForIpad:
            return "arm64"
        case .unknown(_):
            return nil
        case .simulator(_, let arch):
            return arch
        }
    }
}
