//
//  StackVHZDay1.swift
//  SwiftJourney
//
//  Created by HarshaHrudhay on 27/10/25.
//

import SwiftUI

struct StackVHZDay1: View {
    
    var body: some View {
        
        VStack {
            Text("Hello ")
            Text("world")
            Text("Good")
            Text("Morning")
        }
        
        .padding()
        .border(Color.green, width: 5)
        HStack{
            Image(systemName: "person.fill")
            Text("Good Morning, people")
        }
        .padding()
        .border(Color.green, width: 5)
        
        ZStack{
            Rectangle()
                .frame(width: 200, height: 200)
            Text("Text on Top")
                .foregroundStyle(Color.white)
        }
        .border(Color.green, width: 5)
    }
    
}

#Preview {
    StackVHZDay1()
}
