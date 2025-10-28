//
//  TodoModel.swift
//  SwiftJourney
//
//  Created by HarshaHrudhay on 22/07/25.
//

import Foundation

struct taskModel: Identifiable, Hashable {
    
    var id = UUID()
    var title: String
    var priority: ToDoPriority // .AllCases
    var isDone: Bool
    
}


