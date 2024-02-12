//
//  LoanDetailView.swift
//  activeOne
//
//  Created by Gio Valdes on 12/02/24.
//

import SwiftUI

struct LoanDetailView: View {
    let columns = [
            GridItem(.flexible()),
            GridItem(.flexible())
        ]
    let model: LoanDetail
    
    var body: some View {
        ZStack {
            Color.grayBG.ignoresSafeArea()
            VStack (alignment: .leading) {
                Text("Loan Details")
                    .font(.largeTitle)
                    .frame(width: 150)
                    .fontWeight(.bold)
                
                HStack {
                    Text("Left")
                        .font(.caption)
                        .foregroundColor(.gray)
                    Text(model.remainingBalance, format: .currency(code: "USD"))
                        .font(.caption)
                        .fontWeight(.bold)
                    Spacer()
                    Text("Amount Borrowed")
                        .font(.caption)
                        .foregroundColor(.gray)
                    Text(model.amountBorrowed, format: .currency(code: "USD"))
                        .font(.caption)
                        .fontWeight(.bold)
                }
                .padding()
                
                ProgressView(value: 0.8)
                    .progressViewStyle(LinearProgressViewStyle(tint: .green))
                    .padding()
                
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 5) {
                        
                        InfoContainer(title: "Interest", info: "$\(model.interestPaidToDate)", isButton: false)
                        
                        InfoContainer(title: "Interest Rate", info: "\(model.interestRate)%", isButton: false)
                        
                        InfoContainer(title: "Load ID", info: model.loanID, isButton: false)
                        
                        InfoContainer(title: "", info: "Upcoming payments", isButton: true)
                    }
                }
                            
                
                
            }.padding()
        }
    }
}

struct LoanDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LoanDetailView(model: LoanDetail(loanID: "JMI-923429", remainingBalance: 652, amountBorrowed: 3250, interestPaidToDate: 339.77, interestRate: 9.9, maxCreditAmount: 10000))
    }
}
