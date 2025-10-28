//
//  GesturesDay63.swift
//  SwiftJourney
//
//  Created by HarshaHrudhay on 09/09/25.
//

import SwiftUI

struct GesturesDay43: View {
    
    @State private var currentAmount = 0.0
    @State private var finalAmount = 1.0
    
    var body: some View {
        
        VStack {
            
            Text("Double tap")
                .onTapGesture(count: 2) {
                    print("Double tapped!")
                }
            
            Text("Long pressed")
                .onLongPressGesture {
                    print("Long pressed!")
                }
            
            Text("Long pressed with duration")
                .onLongPressGesture(minimumDuration: 2) {
                    print("Long pressed with duration!")
                }
            
            Text("Progress")
                .onLongPressGesture(minimumDuration: 1) {
                    print("Long pressed!")
                } onPressingChanged: { inProgress in
                    print("In progress: \(inProgress)!")
                }
            
            Text("Pinching - Magnifying")
                .scaleEffect(finalAmount + currentAmount)
                .gesture(
                    MagnifyGesture()
                        .onChanged { value in
                            currentAmount = value.magnification - 1
                        }
                        .onEnded { value in
                            finalAmount += currentAmount
                            currentAmount = 0
                        })
            
            VStack {
                Text("Layers Tapping")
                    .onTapGesture {
                        print("Text tapped")
                    }
            }
            .onTapGesture {
                print("VStack tapped")
            }
            
        }
        
    }
}

#Preview {
    GesturesDay43()
}
