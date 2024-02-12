//
//  activeOneTests.swift
//  activeOneTests
//
//  Created by Gio Valdes on 12/02/24.
//

import XCTest
@testable import activeOne

final class activeOneTests: XCTestCase {

    var sut: ContentView!
    
    override func setUpWithError() throws {
        let payments = PaymentProgress(currentPaymentNumber: 8, totalPayments: 10)
        let modelMock = UserData(dueInDays: 2, amountDue: 325.93, nextPaymentsDate: Date(), paymentProgress: payments)
        
        sut = ContentView(model: modelMock as UserData)
    }

    override func tearDownWithError() throws {
        sut = nil
    }
    
    func testModel() throws{
        let payments = PaymentProgress(currentPaymentNumber: 8, totalPayments: 10)
        let modelMock = UserData(dueInDays: 2, amountDue: 325.93, nextPaymentsDate: Date(), paymentProgress: payments) as UserData
        
        //Model mock
        XCTAssertEqual( sut.model.amountDue , modelMock.amountDue)
        XCTAssertEqual( sut.model.dueInDays , modelMock.dueInDays)
        
        //payments mock
        XCTAssertEqual( sut.model.paymentProgress.currentPaymentNumber , modelMock.paymentProgress.currentPaymentNumber)
        XCTAssertEqual( sut.model.paymentProgress.totalPayments , modelMock.paymentProgress.totalPayments)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
