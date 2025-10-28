//
//  navigationViewDay4.swift
//  SwiftJourney
//
//  Created by HarshaHrudhay on 28/10/25.
//

import SwiftUI

struct navigationViewDay4: View {
    var body: some View {
        VStack {
            Text("Navigation View")
            NavigationLink {
                navigationViewDay4()
            } label: {
                Text("next view")
            }

        }
    }
}


#Preview {
    NavigationStack{
        navigationViewDay4()
    }
}


// add navigation stack to preview to make views avtive
