//
//  ToDoPriority.swift
//  SwiftJourney
//
//  Created by HarshaHrudhay on 22/07/25.
//

import Foundation
import SwiftUI

enum ToDoPriority : String, CaseIterable, Identifiable{
    case high
    case medium
    case low
    
    
    var id: Self {
        self
    }
    
    var title: String {
        switch self {
            case .high:
            return "High"
        case .medium:
            return "Medium"
        case .low:
            return "Low"
        }
    }
    
    var color: Color {
        switch self {
            case .high:
            return Color.red
        case .medium:
            return Color.orange
        case .low:
            return Color.green
        }
    }

    
}
