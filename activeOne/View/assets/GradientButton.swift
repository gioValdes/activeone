//
//  GradientButton.swift
//  activeOne
//
//  Created by Gio Valdes on 12/02/24.
//
import SwiftUI

struct GradientButton: View {
    let colors: [Color]
    let text: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(text)
                .font(.headline)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .frame(height: 60)
                .background(LinearGradient(gradient: Gradient(colors: colors), startPoint: .topLeading, endPoint: .bottomTrailing))
                .cornerRadius(30)
                .padding(.horizontal)
        }
    }
}

#Preview {
    GradientButton(colors: [.lightPink, .darkPink], text: "Make a payment", action: {})
}

