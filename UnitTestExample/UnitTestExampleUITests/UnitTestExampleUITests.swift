//
//  UnitTestExampleUITests.swift
//  UnitTestExampleUITests
//
//  Created by Jun on 2022/11/18.
//

import XCTest

final class UnitTestExampleUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        let title = app.staticTexts["Log In"]
        XCTAssertTrue(title.exists)
        
        let usernameField = app.textFields["Username"]
        XCTAssertTrue(usernameField.exists)
        
        usernameField.tap()
        usernameField.typeText("afraz")
        
        
        let passwordSecureTextField = app.secureTextFields["Password"]
        XCTAssertTrue(passwordSecureTextField.exists)
        
        passwordSecureTextField.tap()
        passwordSecureTextField.typeText("password")
        
        let button = app.buttons["Continue"]
        XCTAssertTrue(button.exists)
        
        button.tap()
        
        let accountLabel = app.staticTexts["Welcome, Afraz!"]
        XCTAssertTrue(accountLabel.exists)
        
        
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
