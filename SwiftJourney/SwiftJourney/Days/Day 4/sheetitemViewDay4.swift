//
//  sheetitemViewDay4.swift
//  SwiftJourney
//
//  Created by HarshaHrudhay on 28/10/25.
//

import SwiftUI

struct sheetitemViewDay4: View {
    
    let person: personDay4
    
    var body: some View {
        
        
        Text(person.name)
        Text("weight is \(person.weight)")
        Text("height is \(person.height)")
    }
}

#Preview {
    sheetitemViewDay4(person: personDay4(name: "huh", weight: 0, height: 0))
}
