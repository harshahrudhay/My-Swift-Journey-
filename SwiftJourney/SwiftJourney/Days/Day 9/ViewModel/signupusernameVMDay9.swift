//
//  signupusernameVMDay18.swift
//  SwiftJourney
//
//  Created by HarshaHrudhay on 12/07/25.
//


// Observable Object
// MVVM

import Foundation
import SwiftUI
import Combine



 class signupusernameVMDay9: ObservableObject {
    
     @Published var username: String = ""
     @Published var email = ""
     @Published var password = ""
     @Published var alertTitle = ""
     @Published var alertMessage = ""
     @Published var showAlert = false
     @Published var showNextPage = false
     @Published var confirmPassword = ""
     
     
     func validateForm() {
         guard validateUserName() && validateEmail() else { return }
         showNextPage = true
     }
     
     
    private func validateUserName() -> Bool{
         guard !username.isEmpty else {
             alertTitle = "Username Required"
             alertMessage = "Please provide a username"
             showAlert = true
             return false
         }
         return true
     }
     
    private func validateEmail() -> Bool{
         guard !email.isEmpty else {
             alertTitle = "Email Required"
             alertMessage = "Please provide a email"
             showAlert = true
             return false
         }
         return true
     }
     
     
}
