//
//  ReferenceTests.swift
//  ReferenceTests
//
//  Created by Shweta Mehta on 13/3/20.
//  Copyright © 2020 Mobile Application Development. All rights reserved.
//

import XCTest
import SwiftUI
@testable import Reference

class ReferenceTests: XCTestCase {
    
    let katara = People(
        imgUrl: "https://en.wikipedia.org/wiki/Aang#/media/File:Avatar_Aang.png",
        name: "Katara",
        actor: "Mae Whitman",
        nation: "Southern Water Tribe",
        powers: "water and ice bending, blood bending",
        notes: "Annoying as hell")
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testPeople() { //testing existing model
        
        let imgUrl = "https://mystickermania.com/cdn/stickers/cartoons/avatar-the-last-airbender-appa.svg"
        let name = "Sokka"
        let actor = "Jack De Sena"
        let nation = "Southern Water Tribe"
        let powers = "None"
        let notes = "The best of em all"
        let eg = People(imgUrl: imgUrl, name: name, actor: actor, nation: nation, powers: powers, notes: notes)
        
        XCTAssertEqual(eg.imgUrl, imgUrl)
        XCTAssertEqual(eg.name, name)
        XCTAssertEqual(eg.actor, actor)
        XCTAssertEqual(eg.nation, nation)
        XCTAssertEqual(eg.powers, powers)
        XCTAssertEqual(eg.notes, notes)
        
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPeopleArray() { //testing whether passing an object into an array of objects works
        let sokka = People(imgUrl: "https://mystickermania.com/cdn/stickers/cartoons/avatar-the-last-airbender-appa.svg", name: "Sokka", actor: "Jack De Sena", nation: "Southern Water Tribe", powers: "none", notes: "The best of em all")
        let tester : [People] = [self.katara, sokka]
        
        XCTAssertNotEqual(tester[0].imgUrl, tester[1].imgUrl)
        XCTAssertNotEqual(tester[0].name, tester[1].name)
        XCTAssertNotEqual(tester[0].actor, tester[1].actor)
        XCTAssertEqual(tester[0].nation, tester[1].nation)
        XCTAssertNotEqual(tester[0].powers, tester[1].powers)
        XCTAssertNotEqual(tester[0].notes, tester[1].notes)
    }
    
    func testImageUrl() {
        XCTAssertNotNil(self.katara.imgUrl)
    }
    
    func testName() {
        XCTAssertNotNil(self.katara.name)
    }
    
    func testActor() {
        XCTAssertNotNil(self.katara.actor)
    }
    
    func testNation(){
        XCTAssertNotNil(self.katara.nation)
    }
    
    func testPowers() {
        XCTAssertNotNil(self.katara.powers)
    }
    
    func testNotes() {
        XCTAssertNotNil(self.katara.notes)
    }
    
    func testImageDownload() {
        guard let imgUrl = try? URL(string: "https://www.google.com/logos/doodles/2020/dame-jean-macnamaras-121st-birthday-6753651837108336.4-l.png") else {
            return XCTFail("Invalid URL")
        }
        guard let imgData = try? Data(contentsOf: imgUrl) else {
            return XCTFail("Could not download image")
        }
        guard let uiImg = UIImage(data: imgData) else {
            return XCTFail("Downloaded data does not contain image")
        }
        let downloadedImg = Image(uiImage: uiImg)
        XCTAssertNotNil(downloadedImg)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
