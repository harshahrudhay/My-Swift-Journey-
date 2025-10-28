//
//  LazyGridDay58.swift
//  SwiftJourney
//
//  Created by HarshaHrudhay on 30/08/25.
//

import SwiftUI

struct LazyGridDay42: View {
    
    let columns = [
        GridItem(.fixed(50)),
        GridItem(.fixed(50)),
        GridItem(.fixed(50)),
        GridItem(.fixed(50)),
        GridItem(.fixed(50)),
        GridItem(.fixed(50)),
        GridItem(.fixed(50)),
        GridItem(.fixed(50))
    ]
    
    var body: some View {
        
        VStack{
           
            LazyHGrid(rows: columns, content: {         //LazyVGrid         columns
                
                ForEach(0...60, id: \.self) { index in
                    Color.black
                        .frame(width: 50)      // height
                }
                
                
            })
            
        }
    }
}

#Preview {
    LazyGridDay42()
}
