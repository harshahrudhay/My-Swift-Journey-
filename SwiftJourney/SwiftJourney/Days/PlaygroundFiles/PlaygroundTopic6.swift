//
//  PlaygroundTopic6.swift
//  Netaxis
//
//  Created by Netaxis_IOS on 09/07/25.
//

import SwiftUI

struct PlaygroundTopic6: View {
    
    @State var loveScoree: String = ""
    
    var body: some View {
        
        ZStack {
            Color.playgroundBG
                .ignoresSafeArea()
            
            VStack {
                Text("Love Calculator")
                    .font(.system(size: 20))
                    .foregroundColor(.pGtextBG)
                    .padding()
                Spacer()
                Button(action: {
                    step7()
                }, label: {
                    Text("Output")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                        .foregroundColor(.pGtextBG)
                })
                .padding()
                
                Text(loveScoree)
                    .font(.system(.headline))
                Spacer()
            }
                .frame(width: 350, height: 350)
                .background(RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(Color.boxesBG))
        }
    }
    
    
    func step7() {
        print("\n=== Step 7: Love Calculator ===")
        func loveCalculator() {

            let loveScore = Int.random(in: 0...100)
            
            self.loveScoree = "Love Score is \(loveScore)"

            if loveScore >= 80 {
                print("Score is above 80")
            } else if loveScore >= 40 {
                print("score is greater than 20")
            } else {
                print("womp")
            }
        }
        loveCalculator()
    }

    
}

#Preview {
    PlaygroundTopic6()
}
