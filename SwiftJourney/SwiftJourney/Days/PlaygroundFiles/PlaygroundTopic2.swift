//
//  PlaygroundTopic2.swift
//  Netaxis
//
//  Created by Netaxis_IOS on 09/07/25.
//

import SwiftUI

struct PlaygroundTopic2: View {
    
    @State var FinalName = ""
    
    var body: some View {
        ZStack {
            Color.playgroundBG
                .ignoresSafeArea()
            
            VStack {
                Text("Nil Coalescing")
                    .font(.system(size: 20))
                    .foregroundColor(.pGtextBG)
                    .padding()
                Spacer()
                Button(action: {
                    step2()
                }, label: {
                    Text("Output")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                        .foregroundColor(.pGtextBG)
                })
                .padding()
                
                Text(FinalName)
                    .font(.system(.headline))
                Spacer()
            }
                .frame(width: 350, height: 350)
                .background(RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(Color.boxesBG))
        }
    }
    
    func step2() {
        print("\n=== Step 2: Nil Coalescing ===")
        let name: String? = "Haan"
        let finalName = name ?? "Guest"
        
        
        self.FinalName = finalName
        print("Hello, \(finalName)")                                                    // prints "Hello, Guest"
    }
    
    
}

#Preview {
    PlaygroundTopic2()
}


