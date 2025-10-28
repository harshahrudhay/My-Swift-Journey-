//
//  PlaygroundDay.swift
//  Netaxis
//
//  Created by Netaxis_IOS on 09/07/25.
//

import SwiftUI

struct PlaygroundDay1: View {
    
    @State var sum = ""
    
    var body: some View {
        ZStack {
            Color.playgroundBG
                .ignoresSafeArea()
            
            VStack {
                Text("Force Unwrap")
                    .font(.system(size: 20))
                    .foregroundColor(.pGtextBG)
                    .padding()
                Spacer()
                Button(action: {
                    step1()
                }, label: {
                    Text("Output")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                        .foregroundColor(.pGtextBG)
                })
                .padding()
                
                Text(sum)
                    .font(.system(.headline))
                Spacer()
            }
                .frame(width: 350, height: 350)
                .background(RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(Color.boxesBG))
        }
    }
    
    func step1() {
        let firstNumber: Int?  = 10
            let secondNumber = 20
            let Sum = firstNumber! + secondNumber
        
        self.sum = "\(Sum)"
        
            print(Sum)
        }
}

#Preview {
    PlaygroundDay1()
}



