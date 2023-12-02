import Foundation
#if os(watchOS)
    import WatchKit
#endif

public indirect enum DeviceModel: Equatable, Hashable, RawRepresentable, CaseIterable, CustomStringConvertible {
    public static let current: DeviceModel = {
        #if os(macOS)
            let service = IOServiceGetMatchingService(kIOMasterPortDefault,
                                                      IOServiceMatching("IOPlatformExpertDevice"))
            var modelIdentifier: String?
            if let modelData = IORegistryEntryCreateCFProperty(service, "model" as CFString, kCFAllocatorDefault, 0).takeRetainedValue() as? Data {
                modelIdentifier = String(data: modelData, encoding: .utf8)?.trimmingCharacters(in: .controlCharacters)
            }
            IOObjectRelease(service)
            return DeviceModel(deviceIdentifier: modelIdentifier ?? "Unknown Mac")
        #elseif os(watchOS)
            var size: size_t = 0
            sysctlbyname("hw.machine", nil, &size, nil, 0)
            var machine = [CChar](repeating: 0, count: size)
            sysctlbyname("hw.machine", &machine, &size, nil, 0)
            let watchModel = String(cString: &machine, encoding: String.Encoding.utf8)?.trimmingCharacters(in: .whitespacesAndNewlines)
            return DeviceModel(deviceIdentifier: watchModel ?? "Unknown Watch")
        #else
            var systemInfo = utsname()
            uname(&systemInfo)
            let machineMirror = Mirror(reflecting: systemInfo.machine)
            let systemIdentifier = machineMirror.children.reduce("") { identifier, element in
                guard let value = element.value as? Int8, value != 0 else { return identifier }
                return identifier + String(UnicodeScalar(UInt8(value)))
            }
            return DeviceModel(deviceIdentifier: systemIdentifier)
        #endif
    }()
    
    case iPod(IPodModel)
    case iPhone(IPhoneModel)
    case iPad(IPadModel)
    case appleWatch(AppleWatchModel)
    case appleTV(AppleTVModel)
    case mac(MacModel)
    case macCatalyst
    case macDesignedForIpad
    case unknown(model: String)
    case simulator(DeviceModel, arch: String)
    
    public init(deviceIdentifier: String) {
        self = DeviceModel(rawValue: deviceIdentifier) ?? .unknown(model: deviceIdentifier)
    }
    
    // - Hashable
    public func hash(into hasher: inout Hasher) {
        hasher.combine(rawValue)
    }
}
