//
//  UnitTestExampleTests.swift
//  UnitTestExampleTests
//
//  Created by Jun on 2022/11/18.
//

import XCTest
@testable import UnitTestExample

final class UnitTestExampleTests: XCTestCase {

    var sut: BullsEyeGame!
    
    override func setUpWithError() throws {
        
        try super.setUpWithError()
        sut = BullsEyeGame()
        
    }

    override func tearDownWithError() throws {
        sut = nil
        try super.tearDownWithError()
    }

    func testScoreIsComputedWhenGuessIsLowerThanTarget() {
        
        let guess = sut.targetValue - 5
        sut.check(guess: guess)
        XCTAssertEqual(sut.scoreRound, 105, "guess로 계산된 점수가 잘못되었습니다.")
        
    }
    
    func testScoreIsComputedWhenGuessIsHigherThanTarget() {
        
        // 1. given
        let guess = sut.targetValue + 5
        
        // 2. when
        sut.check(guess: guess)
        
        // 3. then
        XCTAssertEqual(sut.scoreRound, 95, "계산된 점수가 잘못되었습니다.")
        
    }

    
    func testPerformanceExample() throws {
        
        // This is an example of a performance test case.
        self.measure(metrics: [XCTClockMetric(), XCTCPUMetric(), XCTStorageMetric(), XCTMemoryMetric()]){
            
            sut.check(guess: 100)
            
        }
    }

}
