//
//  SFSymbolsViewDay2.swift
//  SwiftJourney
//
//  Created by HarshaHrudhay on 27/10/25.
//

import SwiftUI

struct SFSymbolsViewDay2: View {
    
    var body: some View {
        
        Image(systemName: "square.and.arrow.up.trianglebadge.exclamationmark")                      // Monochrome
            .symbolRenderingMode(.monochrome)
            .foregroundColor(Color.orange)
            .font(.system(size: 40))
            .padding()
        Image(systemName: "square.and.arrow.up.trianglebadge.exclamationmark")                      // hierarchial
            .symbolRenderingMode(.hierarchical)
            .foregroundStyle(Color.green)
            .font(.system(size: 40))
            .padding()
        Image(systemName: "square.and.arrow.up.trianglebadge.exclamationmark")                      // palette
            .symbolRenderingMode(.palette)
            .foregroundStyle(Color.red .opacity(0.6) , Color.black)
            .font(.system(size: 40))
            .padding()
        Image(systemName: "person.3.sequence.fill")
            .symbolRenderingMode(.palette)
            .foregroundStyle(Color.red, Color.green, Color.blue)
            .font(.system(size: 40))
            .padding()
        
    }
    
}

#Preview {
    SFSymbolsViewDay2()
}
