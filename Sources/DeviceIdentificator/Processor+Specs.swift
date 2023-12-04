import Foundation

public extension DeviceModel.Processor {
    var architecture: String {
        switch self {
        default:
            return "arm64" // Not really, check: https://apple.fandom.com/wiki/List_of_Apple_processors
        }
    }

    var introducedYear: Int? {
        switch self {
        default:
            return nil //Check the same list
        }
    }
}
