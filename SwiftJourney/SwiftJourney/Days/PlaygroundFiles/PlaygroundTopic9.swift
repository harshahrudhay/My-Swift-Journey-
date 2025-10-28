//
//  PlaygroundTopic9.swift
//  Netaxis
//
//  Created by Netaxis_IOS on 09/07/25.
//

import SwiftUI

struct PlaygroundTopic9: View {
    
    @State var Text1: String = ""
    
    var body: some View {
        ZStack {
            Color.playgroundBG
                .ignoresSafeArea()
            
            VStack {
                Text("Print something")
                    .font(.system(size: 20))
                    .foregroundColor(.pGtextBG)
                    .padding()
                Spacer()
                Button(action: {
                    step09()
                }, label: {
                    Text("Output")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                        .foregroundColor(.pGtextBG)
                })
                .padding()
                
                Text(Text1)
                    .font(.system(.headline))
                Spacer()
            }
                .frame(width: 350, height: 350)
                .background(RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(Color.boxesBG))
        }
    }
    
    func step09() {
        func printSomething (text: String) {
            self.Text1 = text
            if text == "bad Input" {
                return
            }
            
            
            print(text)
        }
        
        printSomething(text: "Hello Have a Nice Day")
    }
}

#Preview {
    PlaygroundTopic9()
}
