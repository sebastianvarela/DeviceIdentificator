@testable import DeviceIdentificator
import XCTest

public class DeviceIdentificatorTests: XCTestCase {
    public func testIsSimulator() {
        #if targetEnvironment(simulator)
            XCTAssertTrue(UIDevice.current.isSimulator)
            XCTAssertTrue(UIDevice.current.deviceModelName.lowercased.contains("simulator"))
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
        default:
            XCTFail("not supported yet")
        }
    }
}
