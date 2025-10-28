//
//  SignUpPasswordViewDay18.swift
//  SwiftJourney
//
//  Created by HarshaHrudhay on 12/07/25.
//

import SwiftUI

struct SignUpPasswordViewDay9: View {
    
    @ObservedObject var viewModel = signupusernameVMDay9()
    
    
    @State private var showAlert = false
    @State private var alertTitle = ""
    @State private var alertMessage = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text ("Username")
                .font(.system(size: 15, weight: .semibold))
            TextField("Username", text: $viewModel.username)
                .font(.system(size: 15, weight:.regular))
                .padding (.bottom)
            Text ("Email")
                .font(.system(size: 15, weight: .semibold))
            TextField("Email", text: $viewModel.email)
                .font(.system(size: 15, weight: .semibold))
                .padding(.bottom)
            Text ("Password")
                .font(.system(size: 15, weight: .semibold))
            SecureField( "Password", text: $viewModel.password)
                .textFieldStyle(.roundedBorder)
                .padding(.bottom)
            Text ("Confirm Password")
                .font(.system(size: 15, weight: .semibold))
            SecureField( "Confirm Password", text: $viewModel.confirmPassword)
                .textFieldStyle(.roundedBorder)
                .padding(.bottom)
            
            Button {
            if
                viewModel.password == viewModel.confirmPassword {
                alertTitle = "Success!"
                alertMessage = "Please check your email for the activation link."
            }else {
                    alertTitle = "Password Mismatch!"
                    alertMessage = "Please check passwords."
                viewModel.password = ""
                viewModel.confirmPassword = ""
                }
                showAlert = true
            }
            label: {
            Text ("Complete")
                    .foregroundStyle(.white)
                    .font(.system(size: 15, weight: .semibold))
                    .frame (height: 40)
                    .frame (maxWidth: .infinity)
            }
            .background (Color.blue)
            .clipShape (RoundedRectangle(cornerRadius: 6))
            .padding(.top)
            }
        .padding()
        .alert(alertTitle, isPresented: $showAlert) {
            Button("OK", action: {
                if viewModel.password == viewModel.confirmPassword {
                    dismiss ()
                } else {
                    showAlert = false
                }
            })
        } message: {
            Text(alertMessage)
        }
    }
}

#Preview {
    SignUpPasswordViewDay9(viewModel: signupusernameVMDay9())
}
