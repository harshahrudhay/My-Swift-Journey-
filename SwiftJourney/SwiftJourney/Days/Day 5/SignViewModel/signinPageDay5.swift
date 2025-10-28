//
//  signinPageDay13.swift
//  SwiftJourney
//
//  Created by HarshaHrudhay on 07/07/25.
//



import SwiftUI

struct signinPageDay5: View {
    
    @State var email: String = ""
    @State var mobileNumber: String = ""
    @State var username: String = ""
    @State var password: String = ""
    @State var confirmPassword: String = ""
    @State var showAlert: Bool = false
    @State var showUsernameError = false
    @State var showemailError = false
    @State var showmobileNumberError = false
    @State var showpasswordError = false
    @State var showconfirmPasswordError = false
    
    
    
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
               Text("Sign Up Page")
                    .foregroundStyle(Color.white)
                    .font(.system(size: 30, weight: .bold))
                    .padding()
                Text("Sign-UP")
                    .foregroundStyle(Color.black)
                    .font(.system(size: 30, weight: .bold))
                Spacer()
                
                VStack(alignment: .leading, spacing: 15){
                    
                    Text("Create an account")
                        .foregroundStyle(Color.black)
                        .font(.system(size: 20, weight: .semibold))
                    TextField("Username", text: $username)
                        .textFieldStyle(.roundedBorder)
                        .textContentType(.username)
                        .textInputAutocapitalization(.never)
                        .autocorrectionDisabled()
                    if showUsernameError {
                        Text("Username is required")
                            .foregroundStyle(Color.red)
                            .font(.system(size: 10, weight: .regular))
                    }
                    
                    TextField("Mobile Number", text: $mobileNumber)
                        .textFieldStyle(.roundedBorder)
                        .textContentType(.telephoneNumber)
                        .textInputAutocapitalization(.never)
                    if showmobileNumberError {
                        Text("Mobile Number is required")
                            .foregroundStyle(Color.red)
                            .font(.system(size: 10, weight: .regular))
                    }
                    TextField("E-Mail", text: $email)
                        .textFieldStyle(.roundedBorder)
                        .textContentType(.emailAddress)
                        .textInputAutocapitalization(.never)
                    if showemailError {
                        Text("email is required")
                            .foregroundStyle(Color.red)
                            .font(.system(size: 10, weight: .regular))
                    }
                    
                    
                    SecureField("Password", text: $password)
                        .textFieldStyle(.roundedBorder)
                        .textContentType(.password)
                    if showpasswordError {
                        Text("Password is required")
                            .foregroundStyle(Color.red)
                            .font(.system(size: 10, weight: .regular))
                    }
                    SecureField("Confirm password", text: $confirmPassword)
                        .textFieldStyle(.roundedBorder)
                        .textContentType(.password)
                    if showconfirmPasswordError {
                        Text("Confirm password is required")
                            .foregroundStyle(Color.red)
                            .font(.system(size: 10, weight: .regular))
                    }
                    
                    
                    Button (action: {
                        
                        showUsernameError = false
                        showemailError = false
                        showpasswordError = false
                        
                        guard !username.isEmpty else {
                          showUsernameError = true
                            return
                        }
                        guard !mobileNumber.isEmpty else {
                          showmobileNumberError = true
                            return
                        }
                        guard !email.isEmpty else {
                          showemailError = true
                            return
                        }
                        
                        guard !password.isEmpty else {
                          showpasswordError = true
                            return
                        }
                        guard !confirmPassword.isEmpty else {
                          showconfirmPasswordError = true
                            return
                        }
                        
                        username = ""
                        password = ""
                        email = ""
                        mobileNumber = ""
                        confirmPassword = ""
                            
                        showAlert = true
                        
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
                    
                    
                    Spacer()
                }
                .padding(.top, 30)
                .padding(.horizontal)
            }
        }
        
        
        .alert("Sign-up Completed", isPresented: $showAlert) {
            Button("OK", action: {
                 
            })
            } message: {
            Text("Thanks for signing up")
            }

        
        
    }
}

#Preview {
    signinPageDay5()
}
