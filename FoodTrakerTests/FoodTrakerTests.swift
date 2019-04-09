//
//  FoodTrakerTests.swift
//  FoodTrakerTests
//
//  Created by Dewald de Jager on 2019/04/04.
//  Copyright © 2019 Dewald de Jager. All rights reserved.
//

import XCTest
@testable import FoodTraker

class FoodTrakerTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    // MARK: Meal class tests
    func testMealInitializationSucceeds() {
        let zeroRatingMeal = Meal(name: "zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
        
        let positiveRatingMeal = Meal(name: "positive", photo: nil, rating: 5)
        XCTAssertNotNil(positiveRatingMeal)
    }
    
    func testMealInitializationFails() {
        let negativeRatingMeal = Meal(name: "negative", photo: nil, rating: -2)
        XCTAssertNil(negativeRatingMeal)
        
        let emptyStringMeal = Meal(name: "", photo: nil, rating: 3)
        XCTAssertNil(emptyStringMeal)
        
        let largeRatingMeal = Meal(name: "large", photo: nil, rating: 6)
        XCTAssertNil(largeRatingMeal)
    }
}
