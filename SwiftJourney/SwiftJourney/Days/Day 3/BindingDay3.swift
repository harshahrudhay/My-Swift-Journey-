//
//  BindingDay3.swift
//  SwiftJourney
//
//  Created by HarshaHrudhay on 28/10/25.
//

import SwiftUI

struct BindingDay3: View {
    
    @State private   var counter = 0
    
    var body: some View {
        ZStack {
            Color.gray
                .ignoresSafeArea()
            VStack{
                
                Text(" Number of times Button pressed : \(counter)")
                    .fontWeight(.bold)
                    .foregroundStyle(Color.white)
                
                IncreaseButton(counter: $counter)
            }
            
        }
    }
}

#Preview {
    BindingDay3()
}

struct IncreaseButton: View {
    
    @Binding  var counter : Int
    
    var body: some View {
        Button(action: {
            
            counter += 1
            
        }, label: {
            
            Text("Increse Value")
                .frame(width: 350, height: 40)
                .foregroundStyle(Color(red: 0.987, green: 0.926, blue: 0.867))
                .background(Color(red: 0.0, green: 0.123, blue: 0.249))
                .cornerRadius(100)
            
        })
    }
}
