import Foundation

public enum MacVariant: String {
    case miniM1 = "Macmini9,1"
    
}

public extension MacVariant {
    var name: String {
        switch self {
        case .miniM1:
            return "Mini M1"
        }
    }
}
