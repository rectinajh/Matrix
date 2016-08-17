//
//  MatrixTests.swift
//  MatrixTests
//
//  Created by hua on 16/8/16.
//  Copyright © 2016年 212. All rights reserved.
//

import XCTest
@testable import Matrix

class MatrixTests: XCTestCase {

        private static let ProblemName: String = "Medium_059_Spiral_Matrix_II"

        func test_001() {
            let input: Int = 3
            let expected: [[Int]] = [
                [ 1, 2, 3 ],
                [ 8, 9, 4 ],
                [ 7, 6, 5 ]
            ]
            let expection = expectationWithDescription("Spiral_Matrix_II_input_3")
            let result = Spiral_Matrix_II.generateMatrix(input)
//            let result: [[Int]] = Matrix.generateMatrix(input)
            expection.fulfill()
            XCTAssertEqual(expected, result)
            waitForExpectationsWithTimeout(2, handler: nil)
            
        }
        func test_002() {
            let input: Int = 0
            let expected: [[Int]] = [
            ]
            let expection = expectationWithDescription("Spiral_Matrix_II_input_0")
            let result: [[Int]] = Matrix.generateMatrix(input)
            expection.fulfill()
            XCTAssertEqual(expected, result)
            waitForExpectationsWithTimeout(2, handler: nil)
            
        }
        func test_003() {
            let input: Int = 4
            let expected: [[Int]] = [
                [ 1, 2, 3, 4],
                [12,13,14, 5],
                [11,16,15, 6],
                [10, 9, 8, 7]
            ]
            let expection = expectationWithDescription("Spiral_Matrix_II_input_4")
            let result: [[Int]] = Matrix.generateMatrix(input)
            expection.fulfill()
            XCTAssertEqual(expected, result)
            waitForExpectationsWithTimeout(2, handler: nil)
            
        }
}
