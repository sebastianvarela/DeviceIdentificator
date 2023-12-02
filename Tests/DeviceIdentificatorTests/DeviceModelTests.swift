@testable import DeviceIdentificator
import XCTest

public class DeviceModelTests: XCTestCase {
    public func testDeviceIdentifierInit() {
        XCTAssertEqual(DeviceModel(deviceIdentifier: "hakuna"), .unknown(model: "hakuna"))
        XCTAssertEqual(DeviceModel(deviceIdentifier: "iPhone5,2"), .iPhone(.iPhone5Global))
    }

    public func testRawValueInit() {
        DeviceModel.allCases.forEach { model in
            XCTAssertEqual(DeviceModel(rawValue: model.rawValue), model)
        }
    }

    public func test_iPad_simulator() {
        let iPadSimulator = DeviceModel.simulator(.iPad(.iPad1Celullar), arch: "x86")

        XCTAssertTrue(iPadSimulator.isSimulator)
        XCTAssertFalse(iPadSimulator.isIphone)
        XCTAssertTrue(iPadSimulator.isIpad)
        XCTAssertFalse(iPadSimulator.isAppleTV)
        XCTAssertFalse(iPadSimulator.isWatch)
    }

    public func test_iPhone_simulator() {
        let iPadSimulator = DeviceModel.simulator(.iPhone(.iPhoneXS), arch: "arm64")

        XCTAssertTrue(iPadSimulator.isSimulator)
        XCTAssertTrue(iPadSimulator.isIphone)
        XCTAssertFalse(iPadSimulator.isIpad)
        XCTAssertFalse(iPadSimulator.isAppleTV)
        XCTAssertFalse(iPadSimulator.isWatch)
    }

    public func test_AppleTV_simulator() {
        let iPadSimulator = DeviceModel.simulator(.appleTV(.appleTV4G), arch: "x86")

        XCTAssertTrue(iPadSimulator.isSimulator)
        XCTAssertFalse(iPadSimulator.isIphone)
        XCTAssertFalse(iPadSimulator.isIpad)
        XCTAssertTrue(iPadSimulator.isAppleTV)
        XCTAssertFalse(iPadSimulator.isWatch)
   }
    
    public func test_Watch_simulator() {
        let iPadSimulator = DeviceModel.simulator(.appleWatch(.SE_40mmGPS), arch: "arm64")

        XCTAssertTrue(iPadSimulator.isSimulator)
        XCTAssertFalse(iPadSimulator.isIphone)
        XCTAssertFalse(iPadSimulator.isIpad)
        XCTAssertFalse(iPadSimulator.isAppleTV)
        XCTAssertTrue(iPadSimulator.isWatch)
    }
    
    public func test_current_device() {
        let current = DeviceModel.current
        
        XCTAssertEqual(current, .appleTV(.appleTV4G))
    }
}
