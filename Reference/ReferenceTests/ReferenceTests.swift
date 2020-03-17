//
//  ReferenceTests.swift
//  ReferenceTests
//
//  Created by Shweta Mehta on 13/3/20.
//  Copyright © 2020 Mobile Application Development. All rights reserved.
//

import XCTest
@testable import Reference

class ReferenceTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        let img = "Katara"
        let name = "Sokka"
        let nation = "Southern Water Tribe"
        let powers = "None"
        let eg = People(img : img, name: name, nation: nation, powers: powers)
        
        XCTAssertEqual(eg.img, img)
        XCTAssertEqual(eg.name, name)
        XCTAssertEqual(eg.nation, nation)
        XCTAssertEqual(eg.powers, powers)
        
        
        
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
