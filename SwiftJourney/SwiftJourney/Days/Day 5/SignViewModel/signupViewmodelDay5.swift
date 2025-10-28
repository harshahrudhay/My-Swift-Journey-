//
//  signupViewmodelDay5.swift
//  SwiftJourney
//
//  Created by HarshaHrudhay on 12/07/25.
//

import Foundation
import SwiftUI
import Combine


class SignupViewmodelDay5: ObservableObject {
    
    @Published var email: String = ""
    @Published var username: String = ""
    @Published var password: String = ""
    @Published var showAlert: Bool = false
    @Published var showUsernameError = false
    @Published var showemailError = false
    @Published var showpasswordError = false
    
}


