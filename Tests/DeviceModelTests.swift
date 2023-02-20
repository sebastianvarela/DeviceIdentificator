@testable import DeviceIdentificator
import XCTest

public class DeviceModelTests: XCTestCase {
    public func testDeviceIdentifierInit() {
        XCTAssertEqual(DeviceModel(deviceIdentifier: "hakuna"), .unknown(model: "hakuna"))
        XCTAssertEqual(DeviceModel(deviceIdentifier: "iPhone5,2"), .iPhone5(.global))
    }
    
    public func testRawValueInit() {
        DeviceModel.allCases.forEach { model in
            XCTAssertEqual(DeviceModel(rawValue: model.rawValue), model)
        }
    }
    /*
    public func testIsSimulator() {
        XCTAssertTrue(DeviceModel.iPadSimulator(.iPad1G, arch: "x86").isSimulator)
        XCTAssertTrue(DeviceModel.iPhoneSimulator(.iPhone6, arch: "x86").isSimulator)
        XCTAssertFalse(DeviceModel.iPhone6Plus.isSimulator)
    }

    public func testUnknownSimulator() {
        let deviceModel32b = DeviceModel(rawValue: "i386")
        let deviceModel64b = DeviceModel(rawValue: "x86_64")

        switch UI_USER_INTERFACE_IDIOM() {
        case .pad:
            XCTAssertEqual(deviceModel32b, .iPadSimulator(.iPhone6, arch: "x86"))
            XCTAssertEqual(deviceModel64b, .iPadSimulator(.iPhone6, arch: "x86"))
        case .phone:
            XCTAssertEqual(deviceModel32b, .iPhoneSimulator(.iPad1G, arch: "x86"))
            XCTAssertEqual(deviceModel64b, .iPhoneSimulator(.iPad1G, arch: "x86"))
        case .tv:
            XCTAssertEqual(deviceModel32b, .appleTVSimulator(.appleTV4K, arch: "x86"))
            XCTAssertEqual(deviceModel64b, .appleTVSimulator(.appleTV4K, arch: "x86"))
        default:
            XCTFail("not supported yet")
        }
    }

    public func testKnownModels() {
        XCTAssertEqual(DeviceModel(rawValue: "iPhone7,1"), .iPhone6Plus)
        XCTAssertEqual(DeviceModel(rawValue: "iPod1,1"), .iPodTouch1G)
        XCTAssertEqual(DeviceModel(rawValue: "iPad4,1"), .iPadAir1G)
    }

    public func testUnknown() {
        let identifier = "wawa"

        XCTAssertEqual(DeviceModel(rawValue: identifier), .unknown(model: identifier))
    }

    public func testUnknownIphone() {
        let identifier = "iPhone67,21"

        XCTAssertEqual(DeviceModel(rawValue: identifier), .iPhoneUnknown(model: identifier))
    }

    public func testUnknownIpod() {
        let identifier = "iPod67,21"

        XCTAssertEqual(DeviceModel(rawValue: identifier), .iPodUnknown(model: identifier))
    }

    public func testUnknownIpad() {
        let identifier = "iPad67,21"

        XCTAssertEqual(DeviceModel(rawValue: identifier), .iPadUnknown(model: identifier))
    }
     */
}
