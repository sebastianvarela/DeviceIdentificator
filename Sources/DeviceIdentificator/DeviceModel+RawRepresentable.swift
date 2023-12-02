import Foundation
#if canImport(UIKit)
    import UIKit
#endif

public extension DeviceModel {
    // swiftlint:disable:next function_body_length cyclomatic_complexity
    init?(rawValue: String) {
        if let mac = MacModel(rawValue: rawValue) {
            self = .mac(mac)
            return
        }
        
        switch rawValue {

        #if targetEnvironment(macCatalyst) || os(iOS)
        case "arm64" where ProcessInfo.processInfo.isiOSAppOnMac:
            self = .macCatalyst

        case "arm64" where ProcessInfo.processInfo.isMacCatalystApp:
            self = .macDesignedForIpad
        #endif

        // Simulator
        case "i386", "x86_64", "arm64":
            let simulatorIdentifierValue = ProcessInfo().environment["SIMULATOR_MODEL_IDENTIFIER"] ?? "Unknown"
            let simulatorModel = DeviceModel(rawValue: simulatorIdentifierValue) ??
                .unknown(model: simulatorIdentifierValue)
            #if os(iOS)
                let smallerScreen = UIScreen.main.bounds.size.width < 768
                self = smallerScreen ?
                    .simulator(simulatorModel, arch: rawValue) :
                    .simulator(simulatorModel, arch: rawValue)
            #elseif os(tvOS)
                self = .appleTVSimulator(simulatorModel, arch: rawValue)
            #elseif os(watchOS)
                self = .watchSimulator(simulatorModel, arch: rawValue)
            #else
                self = .unknown(model: rawValue)
            #endif
            
        default:
            return nil
        }
    }

    var rawValue: String {
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
            return ""
        case .macDesignedForIpad:
            return ""
        case .unknown(model: let model):
            return model
        case .simulator(let model, _):
            return model.rawValue
        }
    }
}
