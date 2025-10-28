//
//  ViewModelExampleDay9.swift
//  SwiftJourney
//
//  Created by HarshaHrudhay on 12/07/25.
//

import Foundation
import SwiftUI
import Combine


class ViewModelExampleDay9: ObservableObject {
    @Published var codeusers: [CodeUser] = [
        
        
        CodeUser(id: 1, username: "one", email: "one@"),
        CodeUser(id: 2, username: "two", email: "two@"),
        CodeUser(id: 3, username: "three", email: "three@"),
        CodeUser(id: 4, username: "four", email: "four@"),
        CodeUser(id: 5, username: "five", email: "five@"),
        CodeUser(id: 6, username: "six", email: "six@")
        
    ]
}

