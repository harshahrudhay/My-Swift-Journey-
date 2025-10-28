//
//  LazyFlexibleDay58.swift
//  SwiftJourney
//
//  Created by HarshaHrudhay on 30/08/25.
//

import SwiftUI

struct LazyFlexibleDay42: View {
    
    let columns = [
        GridItem(.flexible(minimum: 250)),
        GridItem(.fixed(80)),
        GridItem(.adaptive(minimum: 250))
        
    ]
    
    var body: some View {
        
        
        
        VStack{
            
            LazyVGrid(columns: columns, content: {
                
                Color.black
                    .frame(height: 50)
                Color.red
                    .frame(height: 50)
                Color.yellow
                    .frame(height: 50)
                Color.yellow
                    .frame(height: 50)
                
            })
        }
    }
}

#Preview {
    LazyFlexibleDay42()
}
