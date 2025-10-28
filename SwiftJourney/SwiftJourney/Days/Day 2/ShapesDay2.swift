//
//  ShapesDay2.swift
//  SwiftJourney
//
//  Created by HarshaHrudhay on 27/10/25.
//

import SwiftUI

struct ShapesDay2: View {
    
    var body: some View {
        
        VStack{
            Rectangle()                                                         // regular rectangle (squres)
                .fill(.red)
                .stroke(.black, lineWidth: 5)
                .frame(width: 250, height: 100)
                .padding()
            ///use .fill can be used only to fill one element whereas .foreGS can be used in stacks to color all elements   .foregroundStyle(.green)
            RoundedRectangle(cornerRadius: 50)                                  // rounded rectangle (can be circles)
                .fill(.gray)
                .stroke(.black, lineWidth: 3 )
                .frame(width: 250, height: 100)
                .padding()
            UnevenRoundedRectangle(cornerRadii: .init(topLeading: 0, bottomLeading: 50, bottomTrailing: 0, topTrailing: 50 ))
                .fill(.orange)                                                  // can define any corner
                .stroke(.black, lineWidth: 5)
                .frame(width: 250, height: 100)
                .padding()
            Capsule()                                                           // Capsules
                .fill(.green)
                .frame(width: 250, height: 100)
                .padding()
            Ellipse()                                                           // ellipse
                .fill(.pink)
                .frame(width: 250, height: 100)
                .padding()
            Circle()                                                            // circle
                .fill(.blue)
        }
    }
}

#Preview {
    ShapesDay2()
}
