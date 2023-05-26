@testable import DeviceIdentificator
import XCTest

public class DeviceIdentificatorTests: XCTestCase {
    public func testIsSimulator() {
        #if targetEnvironment(simulator)
            XCTAssertTrue(UIDevice.current.isSimulator)
            XCTAssertTrue(UIDevice.current.deviceModelName.lowercased.contains("simulator"), UIDevice.current.deviceModelName as String)
        #else
            XCTAssertFalse(UIDevice.current.isSimulator)
        #endif
    }

    public func testIsIpad() {
        switch UI_USER_INTERFACE_IDIOM() {
        case .pad:
            XCTAssertTrue(UIDevice.current.isIpad)
        case .phone:
            XCTAssertFalse(UIDevice.current.isIpad)
        case .tv:
            XCTAssertFalse(UIDevice.current.isIpad)
        default:
            XCTFail("not supported yet")
        }
    }

    public func testIsIphone() {
        switch UI_USER_INTERFACE_IDIOM() {
        case .pad:
            XCTAssertFalse(UIDevice.current.isIphone)
        case .phone:
            XCTAssertTrue(UIDevice.current.isIphone)
        case .tv:
            XCTAssertFalse(UIDevice.current.isIphone)
        default:
            XCTFail("not supported yet")
        }
    }

    public func testIsAppleTV() {
        switch UI_USER_INTERFACE_IDIOM() {
        case .pad:
            XCTAssertFalse(UIDevice.current.isAppleTV)
        case .phone:
            XCTAssertFalse(UIDevice.current.isAppleTV)
        case .tv:
            XCTAssertTrue(UIDevice.current.isAppleTV)
        default:
            XCTFail("not supported yet")
        }
    }
}
