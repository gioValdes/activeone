//
//  LoanDetailViewTest.swift
//  activeOneTests
//
//  Created by Gio Valdes on 12/02/24.
//

import XCTest

final class LoanDetailViewTest: XCTestCase {

    var sut: LoanDetailView!
    
    override func setUpWithError() throws {
        let modelMock =  LoanDetail(loanID: "JMI-923429", remainingBalance: 652, amountBorrowed: 3250, interestPaidToDate: 339.77, interestRate: 9.9, maxCreditAmount: 10000)
        
        sut = LoanDetailView(model: modelMock as LoanDetail)
    }

    override func tearDownWithError() throws {
        sut = nil
    }
    
    func testModel() throws{
        
        let modelMock = LoanDetail(loanID: "JMI-923429", remainingBalance: 652, amountBorrowed: 3250, interestPaidToDate: 339.77, interestRate: 9.9, maxCreditAmount: 10000) as LoanDetail
        
        //Model mock
        XCTAssertEqual( sut.model.loanID , modelMock.loanID)
        XCTAssertEqual( sut.model.amountBorrowed , modelMock.amountBorrowed)
        XCTAssertEqual( sut.model.remainingBalance , modelMock.remainingBalance)
        XCTAssertEqual( sut.model.interestPaidToDate , modelMock.interestPaidToDate)
        XCTAssertEqual( sut.model.interestRate , modelMock.interestRate)
    }


}
