//
//  TennisAppTests.swift
//  TennisAppTests
//
//  Created by manju V on 20/02/22.
//  Copyright © 2022 Tcs. All rights reserved.
//

import XCTest
@testable import TennisApp

class TennisAppTests: XCTestCase {
    
     var SUT: Scores = Scores()

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
          SUT = Scores()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    func testA() {
        let result = SUT.FromSequence(sequence: "A")
        XCTAssertEqual("15-love", result)
    }
    
    func testAA() {
        let result = SUT.FromSequence(sequence: "AA")
        XCTAssertEqual("30-love", result)
    }
    
    func testAAA() {
        let result = SUT.FromSequence(sequence: "AAA")
        XCTAssertEqual("40-love", result)
    }
    
    func testAAAA(){
        let result = SUT.FromSequence(sequence: "AAAA")
        XCTAssertEqual("game player A", result)
    }
    
    func testBB(){
        let result = SUT.FromSequence(sequence: "BB")
        XCTAssertEqual("love-30", result)
    }
    
    func testBBA(){
        let result = SUT.FromSequence(sequence: "BBA")
        XCTAssertEqual("15-30", result)
    }
    
    func testABA(){
        let result = SUT.FromSequence(sequence: "ABA")
        XCTAssertEqual("30-15", result)
    }
    
    func testAAABBB() {
        let result = SUT.FromSequence(sequence: "AAABBB")
        XCTAssertEqual("deuce", result)
    }
    
    func testAAABBBA(){
        let result = SUT.FromSequence(sequence: "AAABBBA")
        XCTAssertEqual("advantage player A", result)
    }
    
    func testAAABBBABBB(){
        let result = SUT.FromSequence(sequence: "AAABBBABBB")
        XCTAssertEqual("game player B", result)
    }
    
    func testABAB(){
        let result = SUT.FromSequence(sequence: "ABAB")
        XCTAssertEqual("30-all", result)
    }
    
    func testAAABBBABB() {
        let result = SUT.FromSequence(sequence: "AAABBBABB")
        XCTAssertEqual("advantage player B", result)
    }
    
    func testAAABBBAB(){
        let result = SUT.FromSequence(sequence: "AAABBBAB")
        XCTAssertEqual("deuce", result)
    }
    
    func testABBAC() {
        let result = SUT.FromSequence(sequence: "ABBAC")
        XCTAssertEqual("invalid sequence", result)
    }
    
    func testABABABAABB(){
        let result = SUT.FromSequence(sequence: "ABABABAABB")
        XCTAssertEqual("invalid sequence", result)
    }
    
    func testABBBABA(){
        let result = SUT.FromSequence(sequence: "ABBBABA")
        XCTAssertEqual("invalid sequence", result)
    }

}
