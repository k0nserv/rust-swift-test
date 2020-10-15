import XCTest
@testable import SwiftTest

final class SwiftTestTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(SwiftTest().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
