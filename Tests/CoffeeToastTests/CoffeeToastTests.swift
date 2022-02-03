import XCTest
import SwiftUI
import Combine

@testable import CoffeeToast

final class CoffeeToastTests: XCTestCase {

    func testToast() throws {
        let sampleToast = Toast("Error", isShown: .constant(true)) {
            Text("This is my awesome content")
        }
        XCTAssertEqual(sampleToast.text, "Error")
    }
}
