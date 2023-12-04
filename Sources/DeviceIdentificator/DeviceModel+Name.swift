import Foundation

public extension DeviceModel {
    var name: String {
        switch self {
        case .iPod(let model):
            return model.name
        case .iPhone(let model):
            return model.name
        case .iPad(let model):
            return model.name
        case .appleWatch(let model):
            return model.name
        case .appleTV(let model):
            return model.name
        case .mac(let model):
            return model.name
        case .macCatalyst:
            return "Mac Catalyst"
        case .macDesignedForIpad:
            return "Mac Designed for iPad"
        case .unknown(model: let model):
            return "Unknown device: \(model)"
        case .simulator(let model, let arch):
            return "Simulator of \(model.name) @ \(arch)"
        }
    }
}
