import Foundation
#if canImport(UIKit)
    import UIKit
#endif

public extension DeviceModel {
    init(deviceIdentifier: String) {
        if let mac = IPodModel(rawValue: deviceIdentifier) {
            self = .iPod(mac)
            return
        }
        if let mac = IPhoneModel(rawValue: deviceIdentifier) {
            self = .iPhone(mac)
            return
        }
        if let mac = IPadModel(rawValue: deviceIdentifier) {
            self = .iPad(mac)
            return
        }
        if let mac = AppleWatchModel(rawValue: deviceIdentifier) {
            self = .appleWatch(mac)
            return
        }
        if let mac = AppleTVModel(rawValue: deviceIdentifier) {
            self = .appleTV(mac)
            return
        }
        if let mac = MacModel(rawValue: deviceIdentifier) {
            self = .mac(mac)
            return
        }
        
        switch deviceIdentifier {
            
        #if targetEnvironment(macCatalyst) || os(iOS)
        case "arm64" where ProcessInfo.processInfo.isiOSAppOnMac:
            self = .macCatalyst
            
        case "arm64" where ProcessInfo.processInfo.isMacCatalystApp:
            self = .macDesignedForIpad
        #endif
            
        // Simulator
        case "i386", "x86_64", "arm64":
            let simulatorIdentifierValue = ProcessInfo().environment["SIMULATOR_MODEL_IDENTIFIER"] ?? "Unknown"
            let simulatorModel = DeviceModel(deviceIdentifier: simulatorIdentifierValue)
            self = .simulator(simulatorModel, arch: deviceIdentifier)
            
        default:
            self = .unknown(model: deviceIdentifier)
        }
    }
    
    var deviceIdentifier: String? {
        switch self {
        case .iPod(let model):
            return model.rawValue

        case .iPhone(let model):
            return model.rawValue

        case .iPad(let model):
            return model.rawValue

        case .appleWatch(let model):
            return model.rawValue

        case .appleTV(let model):
            return model.rawValue

        case .mac(let model):
            return model.rawValue

        case .macCatalyst:
            return nil

        case .macDesignedForIpad:
            return nil

        case .unknown(model: let model):
            return model

        case .simulator(let model, _):
            return model.deviceIdentifier
        }
    }
}
