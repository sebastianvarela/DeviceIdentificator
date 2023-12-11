import Foundation

public extension DeviceModel {
    /// Name of the device without the variant. `iPad 1G` instead of `iPad 1G (Wifi)`
    var simpleName: String {
        if #available(iOS 16.0, *) {
            return name.replacing(/\ \(.+?\)/, with: "")
        } else {
            return name.replacingOccurrences(of: "\\([ \\w]*\\)", with: "$1", options: [.regularExpression])
        }
    }
    
    /// Name of the device. Including his variant.
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
