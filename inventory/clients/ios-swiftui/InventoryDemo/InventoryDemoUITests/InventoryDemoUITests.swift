//
//  InventoryDemoUITests.swift
//  InventoryDemoUITests
//
//  Created by Andrew Morgan on 21/04/2021.
//

import XCTest

class InventoryDemoUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testClickLoginButton() throws {
        // start the app in Simulator
        let app = XCUIApplication()
        app.launch()
                           
        // search for a button with title "Log In"
        let startButton = app.buttons["Log In"]
        
        // should be on screen, and enabled
        XCTAssertTrue(startButton.waitForExistence(timeout: 25))
        XCTAssertTrue(startButton.isEnabled)
        
        // tap the button!
        startButton.tap()
    }
    
    func testAddEmail() throws {
        // start the app in Simulator
        let app = XCUIApplication()
        app.launch()

        // search for a text field with accessible identifier "email_input"
        let emailText = app.textFields["email_input"]
        
        // should be on screen
        XCTAssertTrue(emailText.waitForExistence(timeout: 25))
        
        // we tap on it, fill in some text
        emailText.tap()
        emailText.typeText("testemail@realm.com")
        
        // text should be there!
        XCTAssertEqual(emailText.value as! String, "testemail@realm.com")
    }
}
