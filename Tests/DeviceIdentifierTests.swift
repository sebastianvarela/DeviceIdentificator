@testable import DeviceIdentificator
import XCTest

public class DeviceIdentifierTests: XCTestCase {
    public func testRawValue() {
        let identifier = "iPhone15,3"
        let phone = DeviceIdentifier(identifier)

        XCTAssertEqual(phone.rawValue, identifier)
    }

    public func testUnknownIdentifiers() {
        XCTAssertNil(DeviceIdentifier("x86").model)
    }

    public func testPhoneIdentificators() {
        XCTAssertEqual(DeviceIdentifier("iPhone1,1").model, .iPhone1G)
        XCTAssertEqual(DeviceIdentifier("iPhone1,2").model, .iPhone3G)
        XCTAssertEqual(DeviceIdentifier("iPhone2,1").model, .iPhone3GS)
        XCTAssertEqual(DeviceIdentifier("iPhone3,1").model, .iPhone4)
        XCTAssertEqual(DeviceIdentifier("iPhone3,2").model, .iPhone4 )
        XCTAssertEqual(DeviceIdentifier("iPhone3,3").model, .iPhone4)
        XCTAssertEqual(DeviceIdentifier("iPhone4,1").model, .iPhone4S)
        XCTAssertEqual(DeviceIdentifier("iPhone5,1").model, .iPhone5)
        XCTAssertEqual(DeviceIdentifier("iPhone5,2").model, .iPhone5)
        XCTAssertEqual(DeviceIdentifier("iPhone5,3").model, .iPhone5C)
        XCTAssertEqual(DeviceIdentifier("iPhone5,4").model, .iPhone5C)
        XCTAssertEqual(DeviceIdentifier("iPhone6,1").model, .iPhone5S)
        XCTAssertEqual(DeviceIdentifier("iPhone6,2").model, .iPhone5S)
        XCTAssertEqual(DeviceIdentifier("iPhone7,2").model, .iPhone6)
        XCTAssertEqual(DeviceIdentifier("iPhone7,1").model, .iPhone6Plus)
        XCTAssertEqual(DeviceIdentifier("iPhone8,1").model, .iPhone6S)
        XCTAssertEqual(DeviceIdentifier("iPhone8,2").model, .iPhone6SPlus)
        XCTAssertEqual(DeviceIdentifier("iPhone8,4").model, .iPhoneSE)
        XCTAssertEqual(DeviceIdentifier("iPhone9,1").model, .iPhone7)
        XCTAssertEqual(DeviceIdentifier("iPhone9,2").model, .iPhone7Plus)
        XCTAssertEqual(DeviceIdentifier("iPhone9,3").model, .iPhone7)
        XCTAssertEqual(DeviceIdentifier("iPhone9,4").model, .iPhone7Plus)
        XCTAssertEqual(DeviceIdentifier("iPhone10,1").model, .iPhone8)
        XCTAssertEqual(DeviceIdentifier("iPhone10,4").model, .iPhone8)
        XCTAssertEqual(DeviceIdentifier("iPhone10,2").model, .iPhone8Plus)
        XCTAssertEqual(DeviceIdentifier("iPhone10,5").model, .iPhone8Plus)
        XCTAssertEqual(DeviceIdentifier("iPhone10,3").model, .iPhoneX)
        XCTAssertEqual(DeviceIdentifier("iPhone10,6").model, .iPhoneX)
    }

    public func testTabletIdentificators() {
        XCTAssertEqual(DeviceIdentifier("iPad1,1").model, .iPad1G)
        XCTAssertEqual(DeviceIdentifier("iPad1,2").model, .iPad1G)
        XCTAssertEqual(DeviceIdentifier("iPad2,1").model, .iPad2G)
        XCTAssertEqual(DeviceIdentifier("iPad2,2").model, .iPad2G)
        XCTAssertEqual(DeviceIdentifier("iPad2,3").model, .iPad2G)
        XCTAssertEqual(DeviceIdentifier("iPad2,4").model, .iPad2G)
        XCTAssertEqual(DeviceIdentifier("iPad3,1").model, .iPad3G)
        XCTAssertEqual(DeviceIdentifier("iPad3,2").model, .iPad3G)
        XCTAssertEqual(DeviceIdentifier("iPad3,3").model, .iPad3G)
        XCTAssertEqual(DeviceIdentifier("iPad3,4").model, .iPad4G)
        XCTAssertEqual(DeviceIdentifier("iPad3,5").model, .iPad4G)
        XCTAssertEqual(DeviceIdentifier("iPad3,6").model, .iPad4G)

        XCTAssertEqual(DeviceIdentifier("iPad2,5").model, .iPadMini1)
        XCTAssertEqual(DeviceIdentifier("iPad2,6").model, .iPadMini1)
        XCTAssertEqual(DeviceIdentifier("iPad2,7").model, .iPadMini1)
        XCTAssertEqual(DeviceIdentifier("iPad4,4").model, .iPadMini2)
        XCTAssertEqual(DeviceIdentifier("iPad4,5").model, .iPadMini2)
        XCTAssertEqual(DeviceIdentifier("iPad4,6").model, .iPadMini2)
        XCTAssertEqual(DeviceIdentifier("iPad4,7").model, .iPadMini3)
        XCTAssertEqual(DeviceIdentifier("iPad4,8").model, .iPadMini3)
        XCTAssertEqual(DeviceIdentifier("iPad4,9").model, .iPadMini3)
        XCTAssertEqual(DeviceIdentifier("iPad5,1").model, .iPadMini4)
        XCTAssertEqual(DeviceIdentifier("iPad5,2").model, .iPadMini4)

        XCTAssertEqual(DeviceIdentifier("iPad4,1").model, .iPadAir1G)
        XCTAssertEqual(DeviceIdentifier("iPad4,2").model, .iPadAir1G)
        XCTAssertEqual(DeviceIdentifier("iPad4,3").model, .iPadAir1G)
        XCTAssertEqual(DeviceIdentifier("iPad5,3").model, .iPadAir2G)
        XCTAssertEqual(DeviceIdentifier("iPad5,4").model, .iPadAir2G)
    }

    public func testProTabletIdentificators() {
        XCTAssertEqual(DeviceIdentifier("iPad6,3").model, .iPadPro9inch1G)
        XCTAssertEqual(DeviceIdentifier("iPad6,4").model, .iPadPro9inch1G)
        XCTAssertEqual(DeviceIdentifier("iPad6,7").model, .iPadPro12inch1G)
        XCTAssertEqual(DeviceIdentifier("iPad6,8").model, .iPadPro12inch1G)
    }

    public func testIPodIdentificators() {
        XCTAssertEqual(DeviceIdentifier("iPod1,1").model, .iPodTouch1G)
        XCTAssertEqual(DeviceIdentifier("iPod2,1").model, .iPodTouch2G)
        XCTAssertEqual(DeviceIdentifier("iPod3,1").model, .iPodTouch3G)
        XCTAssertEqual(DeviceIdentifier("iPod4,1").model, .iPodTouch4G)
        XCTAssertEqual(DeviceIdentifier("iPod5,1").model, .iPodTouch5G)
        XCTAssertEqual(DeviceIdentifier("iPod7,1").model, .iPodTouch6G)
    }
}
