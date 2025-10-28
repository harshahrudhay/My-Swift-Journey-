//
//  ScrollandGridsDay58.swift
//  SwiftJourney
//
//  Created by HarshaHrudhay on 30/08/25.
//

import SwiftUI

struct ScrollandGridsDay42: View {
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
        
    ]
    
    var body: some View {
        
        
        
        VStack{
            
            ScrollView {
                LazyVGrid(columns: columns, content: {
                    ForEach(0...100, id: \.self) { index in
                        
                        Color.black
                            .frame(height: 50)
                        
                        Color.yellow
                            .frame(height: 50)
                        
                        Color.red
                            .frame(height: 50)
                    }
                })
            }
        }
    }
}

#Preview {
    ScrollandGridsDay42()
}
