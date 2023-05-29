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

    public func test_iPad_simulator() {
        let iPadSimulator = DeviceModel.iPadSimulator(.iPad1G(.cellular), arch: "x86")

        XCTAssertTrue(iPadSimulator.isSimulator)
        XCTAssertFalse(iPadSimulator.isIphone)
        XCTAssertTrue(iPadSimulator.isIpad)
        XCTAssertFalse(iPadSimulator.isAppleTV)
    }

    public func test_iPhone_simulator() {
        let iPadSimulator = DeviceModel.iPhoneSimulator(.iPhoneXS, arch: "arm64")

        XCTAssertTrue(iPadSimulator.isSimulator)
        XCTAssertTrue(iPadSimulator.isIphone)
        XCTAssertFalse(iPadSimulator.isIpad)
        XCTAssertFalse(iPadSimulator.isAppleTV)
    }

    public func test_AppleTV_simulator() {
        let iPadSimulator = DeviceModel.appleTVSimulator(.appleTV4G, arch: "x86")

        XCTAssertTrue(iPadSimulator.isSimulator)
        XCTAssertFalse(iPadSimulator.isIphone)
        XCTAssertFalse(iPadSimulator.isIpad)
        XCTAssertTrue(iPadSimulator.isAppleTV)
    }
}
