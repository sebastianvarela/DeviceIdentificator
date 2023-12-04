import Foundation

public extension DeviceModel.IPadModel {
    var name: String {
        switch self {
        // iPads
        case .iPad1Wifi:                        return "iPad1,1"
        case .iPad1Celullar:                    return "iPad1,2"
        case .iPad2Wifi:                        return "iPad2,1"
        case .iPad2GSM:                         return "iPad2,2"
        case .iPad2CDMA:                        return "iPad2,3"
        case .iPad2NewRev:                      return "iPad2,4"
        case .iPad3Wifi:                        return "iPad3,1"
        case .iPad3CDMA:                        return "iPad3,2"
        case .iPad3GSM:                         return "iPad3,3"
        case .iPad4Wifi:                        return "iPad3,4"
        case .iPad4GSM:                         return "iPad3,5"
        case .iPad4CDMA:                        return "iPad3,6"
        case .iPad5Wifi:                        return "iPad6,11"
        case .iPad5Celullar:                    return "iPad6,12"
        case .iPad6Wifi:                        return "iPad7,5"
        case .iPad6Celullar:                    return "iPad7,6"
        case .iPad7Wifi:                        return "iPad7,11"
        case .iPad7Celullar:                    return "iPad7,12"
        case .iPad8Wifi:                        return "iPad11,6"
        case .iPad8Celullar:                    return "iPad11,7"
        case .iPad9Wifi:                        return "iPad12,1"
        case .iPad9Celullar:                    return "iPad12,2"
        case .iPad10Wifi:                       return "iPad13,18"
        case .iPad10Celullar:                   return "iPad13,19"
            
        // Minis
        case .iPadMini1Wifi:                    return "iPad2,5"
        case .iPadMini1GSM:                     return "iPad2,6"
        case .iPadMini1CDMA:                    return "iPad2,7"
        case .iPadMini2Wifi:                    return "iPad4,4"
        case .iPadMini2GSMCDMA:                 return "iPad4,5"
        case .iPadMini2China:                   return "iPad4,6"
        case .iPadMini3Wifi:                    return "iPad4,7"
        case .iPadMini3GSMCDMA:                 return "iPad4,8"
        case .iPadMini3China:                   return "iPad4,9"
        case .iPadMini4Wifi:                    return "iPad5,1"
        case .iPadMini4Celullar:                return "iPad5,2"
        case .iPadMini5Wifi:                    return "iPad11,1"
        case .iPadMini5Celullar:                return "iPad11,2"
        case .iPadMini6Wifi:                    return "iPad14,1"
        case .iPadMini6Celullar:                return "iPad14,2"
            
        // Airs
        case .iPadAir1Wifi:                     return "iPad4,1"
        case .iPadAir1GSMCDMA:                  return "iPad4,2"
        case .iPadAir1China:                    return "iPad4,3"
        case .iPadAir2Wifi:                     return "iPad5,3"
        case .iPadAir2Celullar:                 return "iPad5,4"
        case .iPadAir3Wifi:                     return "iPad11,3"
        case .iPadAir3Celullar:                 return "iPad11,4"
        case .iPadAir4Wifi:                     return "iPad13,1"
        case .iPadAir4Celullar:                 return "iPad13,2"
        case .iPadAir5Wifi:                     return "iPad13,16"
        case .iPadAir5Celullar:                 return "iPad13,17"
            
        // Pros
        case .iPadPro1_9d7inchWifi:             return "iPad6,3"
        case .iPadPro1_9d7inchCelullar:         return "iPad6,4"
        case .iPadPro1_12d9inchWifi:            return "iPad6,7"
        case .iPadPro1_12d9inchCellular:        return "iPad6,8"
        case .iPadPro1_10d5inchWifi:            return "iPad7,3"
        case .iPadPro1_10d5inchCellular:        return "iPad7,4"
        case .iPadPro2_12d9inchWifi:            return "iPad7,1"
        case .iPadPro2_12d9inchCellular:        return "iPad7,2"
        case .iPadPro1_11inchWifi:              return "iPad8,1"
        case .iPadPro1_11inchWifiTera:          return "iPad8,2"
        case .iPadPro1_11inchCelullar:          return "iPad8,3"
        case .iPadPro1_11inchCelullarTera:      return "iPad8,4"
        case .iPadPro2_11inchWifi:              return "iPad8,9"
        case .iPadPro2_11inchCelullar:          return "iPad8,10"
        case .iPadPro3_12d9inchWifi:            return "iPad8,5"
        case .iPadPro3_12d9inchWifiTera:        return "iPad8,6"
        case .iPadPro3_12d9inchCellular:        return "iPad8,7"
        case .iPadPro3_12d9inchCellularTera:    return "iPad8,8"
        case .iPadPro4_12d9inchWifi:            return "iPad8,11"
        case .iPadPro4_12d9inchCellular:        return "iPad8,12"
        case .iPadPro3_11inchWifi:              return "iPad13,4"
        case .iPadPro3_11inchWifiTera:          return "iPad13,5"
        case .iPadPro3_11inchCellular:          return "iPad13,6"
        case .iPadPro3_11inchCellularTera:      return "iPad13,7"
        case .iPadPro5_12d9inchWifi:            return "iPad13,8"
        case .iPadPro5_12d9inchWifiTera:        return "iPad13,9"
        case .iPadPro5_12d9inchCellular:        return "iPad13,10"
        case .iPadPro5_12d9inchCellularTera:    return "iPad13,11"
        case .iPadPro4_11inchWifi:              return "iPad14,3"
        case .iPadPro4_11inchCellular:          return "iPad14,4"
        case .iPadPro6_12d9inchWifi:            return "iPad14,5"
        case .iPadPro6_12d9inchCellular:        return "iPad14,6"
        }
    }
}
/*
switch self {

// iPods Touch
case .iPodTouch1G: return "iPod touch 1G"
case .iPodTouch2G: return "iPod touch 2G"
case .iPodTouch3G: return "iPod touch 3G"
case .iPodTouch4G: return "iPod touch 4G"
case .iPodTouch5G: return "iPod touch 5G"
case .iPodTouch6G: return "iPod touch 6G"
case .iPodTouch7G: return "iPod touch 7G"

// iPads Regular
case .iPad1G: return "iPad 1G"
case .iPad2G: return "iPad 2G"
case .iPad3G: return "iPad 3G"
case .iPad4G: return "iPad 4G"
case .iPad5G: return "iPad 5G"
case .iPad6G: return "iPad 6G"
case .iPad7G: return "iPad 7G"
case .iPad8G: return "iPad 8G"
case .iPad9G: return "iPad 9G"
case .iPad10G: return "iPad 10G"

// iPads Mini
case .iPadMini1: return "iPad Mini"
case .iPadMini2: return "iPad Mini 2"
case .iPadMini3: return "iPad Mini 3"
case .iPadMini4: return "iPad Mini 4"
case .iPadMini5: return "iPad Mini 5"
case .iPadMini6: return "iPad Mini 6"

// iPads Air
case .iPadAir1G: return "iPad Air"
case .iPadAir2G: return "iPad Air 2"
case .iPadAir3G: return "iPad Air 3"
case .iPadAir4G: return "iPad Air 4"
case .iPadAir5G: return "iPad Air 5"

// iPads Pro
case .iPadPro9d7inch1G: return "iPad Pro 9.7-Inch 1G"
case .iPadPro10d5inch1G: return "iPad Pro 10.5-Inch 1G"
case .iPadPro11inch: return "iPad Pro 11-Inch"
case .iPadPro11inch2G: return "iPad Pro 11-Inch 2G"
case .iPadPro11inch3G: return "iPad Pro 11-Inch 3G"
case .iPadPro11inch4G: return "iPad Pro 11-Inch 4G"
case .iPadPro12d9inch1G: return "iPad Pro 12.9-Inch 1G"
case .iPadPro12d9inch2G: return "iPad Pro 12.9-Inch 2G"
case .iPadPro12d9inch3G: return "iPad Pro 12.9-Inch 3G"
case .iPadPro12d9inch4G: return "iPad Pro 12.9-Inch 4G"
case .iPadPro12d9inch5G: return "iPad Pro 12.9-Inch 5G"
case .iPadPro12d9inch6G: return "iPad Pro 12.9-Inch 6G"

}
*/
