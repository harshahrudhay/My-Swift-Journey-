//
//  personnavigationViewDay4.swift
//  SwiftJourney
//
//  Created by HarshaHrudhay on 28/10/25.
//

import SwiftUI

struct personnavigationViewDay4: View {
    
    let person: personDay4
    
    var body: some View {
        
        VStack{
            Text("person name: \(person.name)")
            Text("person weight: \(person.weight)")
            Text("person height: \(person.height)")
        }
    }
}

#Preview {
    personnavigationViewDay4(person: personDay4(name: "Jack", weight: 55, height: 150))
}
