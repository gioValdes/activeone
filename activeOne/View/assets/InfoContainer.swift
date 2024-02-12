//
//  InfoContainer.swift
//  activeOne
//
//  Created by Gio Valdes on 12/02/24.
//

import SwiftUI

struct InfoContainer: View {
    let title: String
    let info: String
    let isButton: Bool
    
    let fixHeight = 150.0
    
    var body: some View {
        ZStack {
            Color.grayBG.ignoresSafeArea()
            
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(isButton ? .lightPink : .white)
                .frame(height: fixHeight)
                .overlay {
                    VStack(alignment: .leading)
                    {
                        if isButton{
                            HStack {
                                Spacer()
                                Image(systemName: "arrow.forward.circle")
                                    .font(.title)
                                
                            }.padding()
                            
                        }else{
                            HStack {
                                Text(title)
                                    .font(.headline)
                                    .foregroundColor(.gray)
                            }.padding()
                            
                        }
                        Spacer()
                        Text(info)
                            .font(isButton ? .headline : .title2)
                            .foregroundColor(isButton ? .white : .black)
                            .padding()
                            .lineLimit(isButton ? 2 : 1)
                            .fontWeight(.bold)
                        
                    }
                }
                
        }
        
    }
}

#Preview {
    InfoContainer(title: "Interest", info: "$319.77", isButton: false)
}
