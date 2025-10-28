//
//  AtstateDay3.swift
//  SwiftJourney
//
//  Created by HarshaHrudhay on 28/10/25.
//

import SwiftUI

struct AtstateDay3: View {
    
    @State private   var counter = 0
    
    var body: some View {
        ZStack {
            Color(red: 0.996, green: 0.569, blue: 0.288)
                    .ignoresSafeArea()
            VStack{
                
                Text(" Number of times Button pressed : \(counter)")
                    .fontWeight(.bold)
                    .foregroundStyle(Color(red: 0.0, green: 0.504, blue: 0.617))
                
                Button(action: {
                    
                    counter += 1
                    
                }, label: {
                    Text("Increse Value")
                        .frame(width: 350, height: 40)
                        .foregroundStyle(Color(red: 0.987, green: 0.926, blue: 0.867))
                        .background(Color(red: 0.0, green: 0.504, blue: 0.617))
                        .cornerRadius(100)
                        
                })
                .padding()
                
                Button(action: {
                    
                    counter *= 2
                    
                }, label: {
                    Text("Increse Value by Multiplying by 2")
                        .frame(width: 350, height: 40)
                        .foregroundStyle(Color(red: 0.987, green: 0.926, blue: 0.867))
                        .background(Color(red: 0.0, green: 0.504, blue: 0.617))
                        .cornerRadius(100)
                        
                })
            }
            
        }
    }
}

#Preview {
    AtstateDay3()
}
