//
//  signUpViewDay13.swift
//  SwiftJourney
//
//  Created by HarshaHrudhay on 07/07/25.
//

import SwiftUI

struct signUpViewDay5: View {
    
    
    @StateObject private var viewModel = SignupViewmodelDay5()
    
    
    
    var body: some View {
        ZStack{
            
            RadialGradient(
                gradient: Gradient(colors: [Color.white, Color.blue]),
                center: .center,
                startRadius: 20,
                endRadius: 500
            )
            .edgesIgnoringSafeArea(.all)
            
            VStack{
                Text("Sign In Page")
                    .foregroundStyle(Color.white)
                    .font(.system(size: 30, weight: .bold))
                Image("logobg")                                     // add logo to assessts
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                    .padding()
                Text("Sign-IN")
                    .foregroundStyle(Color.black)
                    .font(.system(size: 30, weight: .bold))
                Spacer()
                
                VStack(alignment: .leading, spacing: 15){
                    
                    Text("Login to Your account")
                        .foregroundStyle(Color.black)
                        .font(.system(size: 20, weight: .semibold))
                    TextField("Username", text: $viewModel.username)
                        .textFieldStyle(.roundedBorder)
                        .textContentType(.username)
                        .textInputAutocapitalization(.never)
                        .autocorrectionDisabled()
                    if viewModel.showUsernameError {
                        Text("Username is required")
                            .foregroundStyle(Color.red)
                            .font(.system(size: 10, weight: .regular))
                    }
                    
                    TextField("E-Mail", text: $viewModel.email)
                        .textFieldStyle(.roundedBorder)
                        .textContentType(.emailAddress)
                        .textInputAutocapitalization(.never)
                    if viewModel.showemailError {
                        Text("email is required")
                            .foregroundStyle(Color.red)
                            .font(.system(size: 10, weight: .regular))
                    }
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(.roundedBorder)
                        .textContentType(.password)
                    if viewModel.showpasswordError {
                        Text("Password is required")
                            .foregroundStyle(Color.red)
                            .font(.system(size: 10, weight: .regular))
                    }
                    
                    
                    Button (action: {
                        
                        viewModel.showUsernameError = false
                        viewModel.showemailError = false
                        viewModel.showpasswordError = false
                        
                        guard !viewModel.username.isEmpty else {
                            viewModel.showUsernameError = true
                            return
                        }
                        guard !viewModel.email.isEmpty else {
                            viewModel.showemailError = true
                            return
                        }
                        guard !viewModel.password.isEmpty else {
                            viewModel.showpasswordError = true
                            return
                        }
                        
                        viewModel.username = ""
                        viewModel.password = ""
                        viewModel.email = ""
                        
                        viewModel.showAlert = true
                        
                    }, label: {
                        Text("Sign Up")
                            .font(.system(size: 20, weight: .bold))
                            .frame(maxWidth: .infinity)
                            .frame(height: 45)
                            .foregroundStyle(Color.white)
                            .background(Color.blue)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .padding(.top)
                    })
                    
                    NavigationLink{
                        signinPageDay5()
                    } label: {
                        Text("Create an Account")
                            .foregroundStyle(Color.white)
                    }
                    
                    Spacer()
                }
                .padding(.top, 30)
                .padding(.horizontal)
            }
        }
        
        
        .alert("Sign-up Completed", isPresented: $viewModel.showAlert) {
            Button("OK", action: {
                
            })
        } message: {
            Text("Thanks for signing up")
        }
        
        
        
        
    }
}

#Preview {
    NavigationStack{
        signUpViewDay5()
    }
}
