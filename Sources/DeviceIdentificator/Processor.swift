import Foundation

public extension DeviceModel {
    /// Apple proceesor based on: https://apple.fandom.com/wiki/List_of_Apple_processors
    enum Processor {
        
        // Initial Samsung processors for Apple:
        case APL0098
        case APL0278
        case APL0298
        case APL2298

        // Macs:
        case appleM1
        case appleM1Pro
        case appleM1Max
        case appleM1Ultra
        case appleM2
        case appleM2Pro
        case appleM2Max
        case appleM2Ultra
        case appleM3
        case appleM3Pro
        case appleM3Max

        // iPhone/iPads/TVs:
        case appleA4
        case appleA5
        case appleA5X
        case appleA6
        case appleA6X
        case appleA7
        case appleA8
        case appleA8X
        case appleA9
        case appleA9X
        case appleA10Fusion
        case appleA10XFusion
        case appleA11Bionic
        case appleA12Bionic
        case appleA12XBionic
        case appleA12ZBionic
        case appleA13Bionic
        case appleA14Bionic
        case appleA15Bionic
        case appleA16Bionic
        case appleA17Pro

        // Vision PRO:
        case appleR1
        
        // Watches:
        case appleS1
        case appleS1P
        case appleS2
        case appleS3
        case appleS4
        case appleS5
        case appleS6
        case appleS7
        case appleS8
        case appleS9
    }
}

