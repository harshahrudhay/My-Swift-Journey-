//
//  SignupUSernameEmailViewDay18.swift
//  SwiftJourney
//
//  Created by HarshaHrudhay on 12/07/25.
//

import SwiftUI

struct SignupUSernameEmailViewDay9: View {
    
    @StateObject private var viewmodel = signupusernameVMDay9()
    
    
//    @State private var email = ""
//    @State private var password = ""
//    @State private var alertTitle = ""
//    @State private var alertMessage = ""
//    @State private var showAlert = false
//    @State private var showNextPage = false
//    
    var body: some View {
        NavigationStack{
            VStack(alignment: .leading, spacing: 10) {
                Text("Username")
                    .font(.system(size: 15, weight: . semibold))
                TextField("Username", text: $viewmodel.username)
                    .autocorrectionDisabled()
                    .textInputAutocapitalization(.never)
                    .textFieldStyle(.roundedBorder)
                    .padding(.bottom)
                Text("Email")
                    .font(.system(size: 15, weight: .semibold))
                TextField("Username", text: $viewmodel.email)
                    .autocorrectionDisabled()
                    .textInputAutocapitalization(.never)
                    .textFieldStyle(.roundedBorder)
                    .padding(.bottom)
                Button {
                     
                    viewmodel.validateForm()
                
                }
                label: {
                    Text ("Next")
                        .foregroundStyle(.white )
                        .font(.system(size: 15, weight: .semibold) )
                        .frame(height: 40)
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                
                
            }
            .padding()
            .navigationDestination(isPresented: $viewmodel.showNextPage, destination: {
                SignUpPasswordViewDay9(viewModel: viewmodel)
            })
        }
    }
}

#Preview {
    SignupUSernameEmailViewDay9()
}
