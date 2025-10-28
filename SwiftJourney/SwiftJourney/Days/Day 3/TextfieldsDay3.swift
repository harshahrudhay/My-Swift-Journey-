//
//  TextfieldsDay3.swift
//  SwiftJourney
//
//  Created by HarshaHrudhay on 28/10/25.
//

import SwiftUI

struct TextfieldsDay3: View {
    
    @State private var username = ""
    
    var body: some View {
        ZStack {
            Color(red: 0.240, green: 0.168, blue: 0.208)
                .ignoresSafeArea()
            VStack{
                TextField("User Name", text: $username)
                    .font(.system(size: 15, weight: .semibold))
                    .keyboardType(.alphabet)
                    .textContentType(.emailAddress)
                    .autocorrectionDisabled()
                    .textInputAutocapitalization(.never)
                    .textFieldStyle(.roundedBorder)
                    .padding(.horizontal, 20)
            }
        }
        
    }
}
#Preview {
    TextfieldsDay3()
}
