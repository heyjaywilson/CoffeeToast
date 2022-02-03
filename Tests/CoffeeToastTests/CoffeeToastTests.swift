import XCTest
import SwiftUI
import Combine

@testable import CoffeeToast

final class CoffeeToastTests: XCTestCase {

    func testToast() throws {
        let sampleToast = Toast(isShown: Binding.constant(true), color: .red, text: "Error", duration: 2.0)
        XCTAssertEqual(sampleToast.text, "Error")
    }
}
