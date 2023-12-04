@testable import DeviceIdentificator
import XCTest

public class DeviceModelTests: XCTestCase {
    public func testDeviceIdentifierInitForKnowID() {
        let device = DeviceModel(deviceIdentifier: "iPhone5,2")

        XCTAssertEqual(device, .iPhone(.iPhone5Global))
        XCTAssertEqual(device.deviceIdentifier, "iPhone5,2")
    }

    public func testDeviceIdentifierInitForUnknowID() {
        let device = DeviceModel(deviceIdentifier: "hakuna")

        XCTAssertEqual(device, .unknown(model: "hakuna"))
        XCTAssertEqual(device.deviceIdentifier, "hakuna")
    }

    public func testInitFromDeviceIdentifier() {
        DeviceModel.allCases.forEach { model in
            if let deviceIdentifier = model.deviceIdentifier {
                if model.isSimulator {
                    let simulatedModel = DeviceModel(deviceIdentifier: deviceIdentifier)
                    XCTAssertEqual(.simulator(simulatedModel, arch: model.architecture!), model)
                } else {
                    XCTAssertEqual(DeviceModel(deviceIdentifier: deviceIdentifier), model)
                }
            }
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
        let iPadSimulator = DeviceModel.simulator(.appleTV(.tvHD), arch: "x86")

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
        
        XCTAssertEqual(current, .appleTV(.tv4K2G))
    }
}
