//
//  RDErrorTests.swift
//
//
//  Created by Rostyslav Druzhchenko on 16.02.2021.
//

import XCTest

@testable import RDError

class RDErrorTests: XCTestCase {

    // MARK: - Init tests

    func testCreation() {
        // Given
        // When
        _ = RDError()
        // Then
    }

    func testCreationWithTitle() {
        // Given
        let message = "Error message"

        // When
        let error = RDError(message)

        // Then
        XCTAssertEqual(error.message, message)
        XCTAssertEqual(error.line, 28)
        XCTAssertGreaterThan(error.callstack.count, 45)
    }

    func testCreationWithCause() {
        // Given
        let message = "Error message"
        let cause = RDError("cause")

        // When
        let error = RDError(message, cause)

        // Then
        XCTAssertEqual(error.message, message)
        XCTAssertEqual((error.cause as! RDError).message, "cause")
    }
}

