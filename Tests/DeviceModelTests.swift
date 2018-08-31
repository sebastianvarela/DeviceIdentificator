@testable import DeviceIdentificator
import XCTest

public class DeviceModelTests: XCTestCase {
    public func testIsSimulator() {
        XCTAssertTrue(DeviceModel.iPadSimulator.isSimulator)
        XCTAssertTrue(DeviceModel.iPhoneSimulator.isSimulator)
        XCTAssertFalse(DeviceModel.iPhone6Plus.isSimulator)
    }

    public func testUnknownSimulator() {
        let deviceModel32b = DeviceModel(DeviceIdentifier("i386"))
        let deviceModel64b = DeviceModel(DeviceIdentifier("x86_64"))

        switch UI_USER_INTERFACE_IDIOM() {
        case .pad:
            XCTAssertEqual(deviceModel32b, .iPadSimulator)
            XCTAssertEqual(deviceModel64b, .iPadSimulator)
        case .phone:
            XCTAssertEqual(deviceModel32b, .iPhoneSimulator)
            XCTAssertEqual(deviceModel64b, .iPhoneSimulator)
        case .tv:
            XCTAssertEqual(deviceModel32b, .appleTVSimulator)
            XCTAssertEqual(deviceModel64b, .appleTVSimulator)
        default:
            XCTFail("not supported yet")
        }
    }

    public func testKnownModels() {
        XCTAssertEqual(DeviceModel(DeviceIdentifier("iPhone7,1")), .iPhone6Plus)
        XCTAssertEqual(DeviceModel(DeviceIdentifier("iPod1,1")), .iPodTouch1G)
        XCTAssertEqual(DeviceModel(DeviceIdentifier("iPad4,1")), .iPadAir1G)
    }

    public func testUnknown() {
        let identifier = "wawa"

        XCTAssertEqual(DeviceModel(DeviceIdentifier(identifier)), .unknown(model: identifier))
    }

    public func testUnknownIphone() {
        let identifier = "iPhone67,21"

        XCTAssertEqual(DeviceModel(DeviceIdentifier(identifier)), .iPhoneUnknown(model: identifier))
    }

    public func testUnknownIpod() {
        let identifier = "iPod67,21"

        XCTAssertEqual(DeviceModel(DeviceIdentifier(identifier)), .iPodUnknown(model: identifier))
    }

    public func testUnknownIpad() {
        let identifier = "iPad67,21"

        XCTAssertEqual(DeviceModel(DeviceIdentifier(identifier)), .iPadUnknown(model: identifier))
    }
}
