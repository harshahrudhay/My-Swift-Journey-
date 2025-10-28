//
//  PlaygroundTopic5.swift
//  Netaxis
//
//  Created by Netaxis_IOS on 09/07/25.
//

import SwiftUI

struct PlaygroundTopic5: View {
    
    @State var greetinh: String = ""
    
    var body: some View {
        ZStack {
            Color.playgroundBG
                .ignoresSafeArea()
            
            VStack {
                Text("Implicit Optional")
                    .font(.system(size: 20))
                    .foregroundColor(.pGtextBG)
                    .padding()
                Spacer()
                Button(action: {
                    step6()
                }, label: {
                    Text("Output")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                        .foregroundColor(.pGtextBG)
                })
                .padding()
                
                Text(greetinh)
                    .font(.system(.headline))
                Spacer()
            }
                .frame(width: 350, height: 350)
                .background(RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(Color.boxesBG))
        }
    }
    
    func step6() {
        
        print("\n=== Step 6: Implicit Optional ===")
        
        let noame: String?
        
        noame = "jon"
        self.greetinh = "Hello, \(noame ?? "World")"

        if let unwrappedName = noame {

            print("Hello, \(unwrappedName)")
        } else {
            print("No name provided")
        }
    }
    
}

#Preview {
    PlaygroundTopic5()
}



