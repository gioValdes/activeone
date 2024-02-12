//
//  activeOneApp.swift
//  activeOne
//
//  Created by Gio Valdes on 12/02/24.
//

import SwiftUI

@main
struct activeOneApp: App {
    var body: some Scene {
        WindowGroup {
            let payments = PaymentProgress(currentPaymentNumber: 8, totalPayments: 10)
            let modelMock = UserData(dueInDays: 2, amountDue: 325.93, nextPaymentsDate: Date(), paymentProgress: payments) as UserData
            
            ContentView(model: modelMock)
        }
    }
}
