//
//  RDError.swift
//
//
//  Created by Rostyslav Druzhchenko on 16.02.2021.
//

import Foundation

open class RDError: Error {

    public let title: String?
    public let cause: Error?

    public let file: StaticString
    public let line: UInt

    public let callstack: [String]

    public init(_ title: String?,
                _ cause: Error,
                file: StaticString = #filePath,
                line: UInt = #line) {

        self.title = title
        self.cause = cause
        self.file = file
        self.line = line

        callstack = Thread.callStackSymbols
    }
}
