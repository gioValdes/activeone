import SwiftUI

struct ContentView: View {
    let model: UserData
    
    var body: some View {
        ZStack {
            Image("coin")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .offset(x: 60, y: -150)
                .opacity(0.3)
            
        
        
        VStack(alignment: .leading)
        {
            HStack {
                Image(systemName: "arrow.left")
                Spacer()
            }
            Spacer()
            Text("Due in \(model.dueInDays) days")
                .font(.headline)
                .foregroundStyle(.gray)
            HStack {
                Text(model.amountDue, format: .currency(code: "USD"))
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Spacer()
                Image(systemName:"creditcard.fill")
                    .font(.largeTitle)
                    .opacity(0.5)
                
            }
            HStack {
                HStack {
                    HStack {
                        Text("Next payment")
                            .font(.subheadline)
                        Text("\(model.nextPaymentsDate.formatted(date:.abbreviated, time: .omitted))")
                            .font(.subheadline)
                            .foregroundStyle(.gray)
                    }
                }
                
                Spacer()
                HStack {
                    Text("\(model.paymentProgress.currentPaymentNumber)")
                        .font(.subheadline)
                    Text("of \(model.paymentProgress.totalPayments) payments")
                        .font(.subheadline)
                        .foregroundStyle(.gray)
                }
            }
            
            GradientButton(colors: [.lightPink, .darkPink], text: "Make a payment") {
                
            }
            
            Spacer()
            
        }
        
        .padding()
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let payments = PaymentProgress(currentPaymentNumber: 8, totalPayments: 10)
        let modelMock = UserData(dueInDays: 2, amountDue: 325.93, nextPaymentsDate: Date(), paymentProgress: payments) as UserData
        
        ContentView(model: modelMock)
    }
}
