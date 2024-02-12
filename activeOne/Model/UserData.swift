//
//  UserData.swift
//  activeOne
//
//  Created by Gio Valdes on 12/02/24.
//

import Foundation

struct UserData:Codable {
    var dueInDays: Int
    var amountDue: Float
    var nextPaymentsDate: Date
    var paymentProgress: PaymentProgress
}

struct PaymentProgress:Codable {
    var currentPaymentNumber: Int
    var totalPayments: Int
}
