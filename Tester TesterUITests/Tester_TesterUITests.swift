//
//  Tester_TesterUITests.swift
//  Tester TesterUITests
//
//  Created by Brenton Durkee on 12/18/15.
//  Copyright © 2015 Test. All rights reserved.
//

import XCTest

class Tester_TesterUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        //Enabled Accessibility through Identity Inspector in Story Board
        
        let app = XCUIApplication()
        let tablesQuery = app.tables
        tablesQuery.cells.images["1"]
        tablesQuery.cells.images["2"]
        tablesQuery.cells.images["3"]
        let image = tablesQuery.cells.images["4"]
        sleep(10)
        image.tap()
        let textField = app.otherElements.containingType(.NavigationBar, identifier:"Tester_Tester.PostView").childrenMatchingType(.Other).element.childrenMatchingType(.Other).element.childrenMatchingType(.Other).element.childrenMatchingType(.TextField).element
        textField.tap()
        textField.typeText("test")
        app.buttons["Add Comment"].tap()
        XCTAssert(app.textViews["\ntest"].exists)
        
    }
    
    
    //Below test works if Accessibilty is not enabled. Here UI recording was not able to identify the scroll through videos
    func testExample1() {
        let app = XCUIApplication()
        app.swipeUp()
        app.swipeUp()
        _ = app.tap()
        sleep(10)
        let textField = app.otherElements.containingType(.NavigationBar, identifier:"Tester_Tester.PostView").childrenMatchingType(.Other).element.childrenMatchingType(.Other).element.childrenMatchingType(.Other).element.childrenMatchingType(.TextField).element
        textField.tap()
        sleep(10)
        textField.typeText("test")
        app.buttons["Add Comment"].tap()
        XCTAssert(app.textViews["\ntest"].exists)
    }
}
