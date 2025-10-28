//
//  texteditorDay3.swift
//  SwiftJourney
//
//  Created by HarshaHrudhay on 28/10/25.
//

import SwiftUI

struct texteditorDay3: View {
    
    @State private var bio = ""
    
    var body: some View {
        
        ZStack {
            VStack{
                TextEditor(text: $bio)
                    .overlay(content: {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.clear)
                            .stroke(Color.black, lineWidth: 4)
                    })
                    .foregroundStyle(Color.white)
                    .scrollContentBackground(.hidden)
                    .frame(height: 150)
                    .background(Color.gray)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding(.horizontal)
            }
            
        }
        
    }
}


#Preview {
    texteditorDay3()
}
