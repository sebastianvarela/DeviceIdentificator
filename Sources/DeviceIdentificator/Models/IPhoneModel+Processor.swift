import Foundation

public extension DeviceModel.IPhoneModel {
    var processor: DeviceModel.Processor {
        switch self {
        case .iPhone1G:             return .APL0098
        case .iPhone3G:             return .APL0098
        case .iPhone3GS:            return .APL0298
        case .iPhone4GSM:           return .appleA4
        case .iPhone4GSMRevA:       return .appleA4
        case .iPhone4CDMA:          return .appleA4
        case .iPhone4S:             return .appleA5
        case .iPhone5GSM:           return .appleA6
        case .iPhone5Global:        return .appleA6
        case .iPhone5CGSM:          return .appleA6
        case .iPhone5CGlobal:       return .appleA6
        case .iPhone5SGSM:          return .appleA7
        case .iPhone5SGlobal:       return .appleA7
        case .iPhone6:              return .appleA8
        case .iPhone6Plus:          return .appleA8
        case .iPhone6S:             return .appleA9
        case .iPhone6SPlus:         return .appleA9
        case .iPhoneSE:             return .appleA9
        case .iPhone7GSM:           return .appleA10Fusion
        case .iPhone7Global:        return .appleA10Fusion
        case .iPhone7PlusGSM:       return .appleA10Fusion
        case .iPhone7PlusGlobal:    return .appleA10Fusion
        case .iPhone8GSM:           return .appleA11Bionic
        case .iPhone8Global:        return .appleA11Bionic
        case .iPhone8PlusGSM:       return .appleA11Bionic
        case .iPhone8PlusGlobal:    return .appleA11Bionic
        case .iPhoneXGSM:           return .appleA11Bionic
        case .iPhoneXGlobal:        return .appleA11Bionic
        case .iPhoneXR:             return .appleA12Bionic
        case .iPhoneXS:             return .appleA12Bionic
        case .iPhoneXSMax:          return .appleA12Bionic
        case .iPhone11:             return .appleA13Bionic
        case .iPhone11Pro:          return .appleA13Bionic
        case .iPhone11ProMax:       return .appleA13Bionic
        case .iPhoneSE2G:           return .appleA13Bionic
        case .iPhone12Mini:         return .appleA14Bionic
        case .iPhone12:             return .appleA14Bionic
        case .iPhone12Pro:          return .appleA14Bionic
        case .iPhone12ProMax:       return .appleA14Bionic
        case .iPhone13Pro:          return .appleA15Bionic
        case .iPhone13ProMax:       return .appleA15Bionic
        case .iPhone13Mini:         return .appleA15Bionic
        case .iPhone13:             return .appleA15Bionic
        case .iPhoneSE3G:           return .appleA15Bionic
        case .iPhone14:             return .appleA15Bionic
        case .iPhone14Plus:         return .appleA15Bionic
        case .iPhone14Pro:          return .appleA16Bionic
        case .iPhone14ProMax:       return .appleA16Bionic
        case .iPhone15:             return .appleA16Bionic
        case .iPhone15Plus:         return .appleA16Bionic
        case .iPhone15Pro:          return .appleA17Pro
        case .iPhone15ProMax:       return .appleA17Pro
        }
    }
}
