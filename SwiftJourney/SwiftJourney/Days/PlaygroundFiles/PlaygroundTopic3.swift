//
//  PlaygroundTopic3.swift
//  Netaxis
//
//  Created by Netaxis_IOS on 09/07/25.
//

import SwiftUI

struct PlaygroundTopic3: View {
    
    @State var name: String = ""
    
    var body: some View {
        
        ZStack {
            Color.playgroundBG
                .ignoresSafeArea()
            
            VStack {
                Text("if let")
                    .font(.system(size: 20))
                    .foregroundColor(.pGtextBG)
                    .padding()
                Spacer()
                Button(action: {
                    step3()
                }, label: {
                    Text("Output")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                        .foregroundColor(.pGtextBG)
                })
                .padding()
                
                Text(name)
                    .font(.system(.headline))
                Spacer()
            }
                .frame(width: 350, height: 350)
                .background(RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(Color.boxesBG))
        }
    }
    
    func step3() {
        print("\n=== Step 4: if let ===")                                               // if let
        let naame: String? = "Alien"
        
        self.name = naame?.uppercased() ?? "No name provided"
        
        if let unwrappedName = naame {
            print("Hello, \(unwrappedName)")
        } else {
            print("No name provided")
        }
        
        
    }
    
}

#Preview {
    PlaygroundTopic3()
}
