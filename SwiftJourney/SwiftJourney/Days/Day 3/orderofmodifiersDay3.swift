//
//  orderofmodifiersDay3.swift
//  SwiftJourney
//
//  Created by HarshaHrudhay on 28/10/25.
//


// order of modifiers
// Always modifier's order matters because if we give background first then it willl limit upto the text background and will not priortise the frame


import SwiftUI

struct orderofmodifiersDay3: View {
    
    var body: some View {
        VStack{
            
            Image(systemName: "person.fill")
                .resizable()                                                                // will not work if we use fraem first
                .frame(width: 50, height: 50)
            
            Text("Hello mate")
                .font(.system(size: 15, weight: .bold))
                .foregroundStyle(Color.green)
                .frame(width: 200)
                .background(Color.gray)
        }
    }
}


#Preview {
    orderofmodifiersDay3()
}
