import XCTest
import SwiftUI
import Combine

@testable import CoffeeToast

final class CoffeeToastTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(CoffeeToast().text, "Hello, World!")
    }

    func testToast() throws {
        let sampleToast = Toast(isShown: Binding.constant(true), color: .red, text: "Error", duration: 2.0)
        XCTAssertEqual(sampleToast.text, "Error")
    }
}
