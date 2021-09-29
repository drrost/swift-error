//
//  RDErrorResultTests.swift
//
//
//  Created by Rostyslav Druzhchenko on 29.09.2021.
//

import XCTest

@testable import RDError

class RDErrorResultTests: XCTestCase {

    // MARK: - Tests

    func testResult() {

        // Given
        let networkHandler = NetworkHandler()

        // When
        networkHandler.auth("", "") { result in

            // Then
            switch result {
            case .success(let token):
                XCTAssertTrue(token.count > 0)
            case .failure(let error):
                XCTAssertEqual("Login is empty", error.message)
            }
        }
    }
}

typealias AuthCompletion = (Result<String, RDError>) -> Void

fileprivate class NetworkHandler {

    func auth(_ login: String, _ password: String,
              _ completion: @escaping AuthCompletion) {

        if login.count == 0 {
            completion(.failure(RDError("Login is empty")))
        }
    }
}
