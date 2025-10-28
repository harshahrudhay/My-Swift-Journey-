//
//  Extension+View.swift
//  SwiftJourney
//
//  Created by HarshaHrudhay on 24/07/25.
//

import Foundation
import SwiftUI

extension View {
    @ViewBuilder func `if`<content: View>(_ condition: Bool, transform: (Self) -> content) -> some View {
        
        if condition {
            
             transform(self)
            
        } else {
            self
        }
        
    }
}
