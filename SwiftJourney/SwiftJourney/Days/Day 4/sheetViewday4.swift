//
//  sheetViewday12.swift
//  SwiftJourney
//
//  Created by HarshaHrudhay on 28/10/25.
//


// 2 types of calling variables from different structs 1.@binding, 2.through Environment


import SwiftUI

struct sheetViewday4: View {
    
    @Environment(\.dismiss) var dismiss
    @Binding var showsheet: Bool
    
    
    var body: some View {
        
        Button(action: {
            dismiss()
        }, label: {
            Text("Dismiss with environment")
        })
        
        Button(action: {

            showsheet = false
        }, label: {
            Text("Dismiss with binding")
        })
        
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    sheetViewday4(showsheet: .constant(true))
}
