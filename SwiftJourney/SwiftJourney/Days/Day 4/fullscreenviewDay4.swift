//
//  fullscreenviewDay4.swift
//  SwiftJourney
//
//  Created by HarshaHrudhay on 28/10/25.
//

import SwiftUI

struct fullscreenviewDay4: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button(action: {
                    dismiss()
                }, label: {
                    Image(systemName: "xmark")
                        .font(.system(size: 20, weight: .bold))
                })
                .padding()
            }
            Spacer()
            Text("Full screen Sheet")
            Spacer()
            
         
        }
        
    }
}

#Preview {
    fullscreenviewDay4()
}
