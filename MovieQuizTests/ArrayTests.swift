//
//  ArrayTest.swift
//  MovieQuizTests
//
//  Created by Анастасия on 08.08.2023.
//

import Foundation
import XCTest
@testable import MovieQuiz

class ArrayTests: XCTestCase {
    func testGetValueInRange() throws {
        // Given
        let array = [1, 2, 3, 4, 5]
               
        // When
        let value = array[safe: 2]
               
        // Then
        XCTAssertNotNil(value)
        XCTAssertEqual(value, 2)
    }
    
    func testGetValueOutOfRange() throws {
        // Given
        let array = [1, 2, 3, 4, 5]
               
        // When
        let value = array[safe: 20]
               
        // Then
        XCTAssertNil(value)
    }
}
