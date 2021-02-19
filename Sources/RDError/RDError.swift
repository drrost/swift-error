//
//  RDError.swift
//
//
//  Created by Rostyslav Druzhchenko on 16.02.2021.
//

import Foundation

open class RDError: Error {

    public let message: String
    public let cause: Error?

    public let file: StaticString
    public let line: UInt

    public let callstack: [String]

    public init(_ message: String = "",
                _ cause: Error? = nil,
                file: StaticString = #filePath,
                line: UInt = #line) {

        self.message = message
        self.cause = cause
        self.file = file
        self.line = line

        callstack = Thread.callStackSymbols
    }
}
