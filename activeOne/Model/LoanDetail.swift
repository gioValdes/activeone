//
//  LoanDetail.swift
//  activeOne
//
//  Created by Gio Valdes on 12/02/24.
//

import Foundation

struct LoanDetail:Codable {
    var loanID: String
    var remainingBalance: Float
    var amountBorrowed: Float
    var interestPaidToDate: Float
    var interestRate: Float
    var maxCreditAmount: Float
}
