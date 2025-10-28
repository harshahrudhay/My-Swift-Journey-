//
//  GridExampleDay58.swift
//  SwiftJourney
//
//  Created by HarshaHrudhay on 30/08/25.
//

import SwiftUI

struct GridExampleDay41: View {
    var body: some View {
        VStack{
            Grid{
                GridRow{
                    Text("Excersise Name")
                        .font(.system(size: 15, weight: .semibold))
                        .frame(maxWidth: .infinity)
                    Text("Sets")
                        .font(.system(size: 15, weight: .semibold))
                    Text("Reps")
                        .font(.system(size: 15, weight: .semibold))
                    Text("Completion")
                        .font(.system(size: 15, weight: .semibold))
                }
                
                Divider()
                
                GridRow{
                    Text("Bench Press")
                        .font(.system(size: 15))
                        .frame(maxWidth: .infinity)
                    Text("5")
                        .font(.system(size: 15))
                    Text("15")
                        .font(.system(size: 15))
                    Text("40")
                        .font(.system(size: 15))
                }
            }
            .padding(.horizontal)
            
        }
           
    }
}

#Preview {
    GridExampleDay41()
}
