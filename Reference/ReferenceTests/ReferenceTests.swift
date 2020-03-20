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

    func peopleTester() {
        let img = "Sokka"
        let name = "Sokka"
        let pet = ""
        let nation = "Southern Water Tribe"
        let powers = "None"
        let eg = People(img : img, name: name, pet: pet, nation: nation, powers: powers)
        
        XCTAssertEqual(eg.img, img)
        XCTAssertEqual(eg.name, name)
        XCTAssertEqual(eg.pet, pet)
        XCTAssertEqual(eg.nation, nation)
        XCTAssertEqual(eg.powers, powers)
        
        
        
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func modelPassingTester() {
        let katara = People(img: "Katara", name: "Katara", pet: "Miss Know-It-All", nation: "Southern Water Tribe", powers: "water and ice bending, blood bending")
        let sokka = People(img: "Sokka", name: "Sokka", pet: "Mister Lazy Bum", nation: "Southern Water Tribe", powers: "none")
        let tester : [People] = [katara, sokka]
        
        XCTAssertNotNil(tester[0].img)
        XCTAssertNotNil(tester[0].name)
        XCTAssertNotNil(tester[0].pet)
        XCTAssertNotNil(tester[0].nation)
        XCTAssertNotNil(tester[0].powers)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
