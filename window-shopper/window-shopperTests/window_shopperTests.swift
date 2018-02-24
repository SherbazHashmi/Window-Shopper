//
//  window_shopperTests.swift
//  window-shopperTests
//
//  Created by Sherbaz Hashmi on 24/2/18.
//  Copyright © 2018 Sherbaz Hashmi. All rights reserved.
//

import XCTest

class window_shopperTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    

    func testGetHours () {
        
        getHoursTestBasic(forwage: 25, andPrice: 100, result: 4)
        getHoursTestBasic(forwage: 15.50, andPrice: 250.53, result: 17)
    }
    
    func getHoursTestBasic (forwage wage : Double, andPrice price : Double, result : Int) {
        let actual = Wage.getHours(forWage: wage, andPrice: price)
        XCTAssert(actual == result, "Expected " + String(result) + " Returned " + String(actual))
    }
  
    
}
