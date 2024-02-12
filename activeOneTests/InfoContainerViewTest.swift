//
//  InfoContainerViewTest.swift
//  activeOneTests
//
//  Created by Gio Valdes on 12/02/24.
//

import XCTest

final class InfoContainerViewTest: XCTestCase {

    var sut: InfoContainer!
    
    override func setUpWithError() throws {
        sut = InfoContainer(title: "MOCK TITLE", info: "MOCK INFO", isButton: true)
    }

    override func tearDownWithError() throws {
        sut = nil
    }

    func testModel() throws {
        XCTAssertEqual(sut.info, "MOCK INFO")
        XCTAssertEqual(sut.title, "MOCK TITLE")
        XCTAssertTrue(sut.isButton)
        
    }

}
