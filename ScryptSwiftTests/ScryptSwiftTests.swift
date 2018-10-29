//
//  ScryptSwiftTests.swift
//  ScryptSwiftTests
//
//  Created by 林子帆 on 2018/10/28.
//  Copyright © 2018 nicholas. All rights reserved.
//

import XCTest
@testable import ScryptSwift

class ScryptSwiftTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        var params = ScryptParams()
        params.n = 1024
        params.r = 8
        params.p = 16
        params.desiredKeyLength = 64
        params.salt = "Salt".data(using: .utf8)!
        
        let scrypt = Scrypt(params: params)
        let res = try! scrypt.calculate(password: "12345678")
        
        let expected = Data(hexString: "4532db458960204248a708d1131c638b8a0a3a8d406e3e839f2e1d69ba12711d6bcab50837b4007f558401ffa174c4950570cf03ce05e51ee7027cb6212c6e57")
        XCTAssertEqual(res, expected)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
