//
//  CiewExampleDay18.swift
//  SwiftJourney
//
//  Created by HarshaHrudhay on 12/07/25.
//

import SwiftUI

struct ViewExampleDay9: View {
    
    @StateObject var viewModel = ViewModelExampleDay9()
    
    var body: some View {
        List(viewModel.codeusers) { users in
            Text(users.username)
        }
    }
}

#Preview {
    ViewExampleDay9()
}
