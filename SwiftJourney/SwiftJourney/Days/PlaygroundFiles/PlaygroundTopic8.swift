//
//  PlaygroundTopic8.swift
//  Netaxis
//
//  Created by Netaxis_IOS on 09/07/25.
//

import SwiftUI

struct PlaygroundTopic8: View {
    
    @State var ResultofSum : String = ""
    
    var body: some View {
        
        ZStack {
            Color.playgroundBG
                .ignoresSafeArea()
            
            VStack {
                Text("Function with Return")
                    .font(.system(size: 20))
                    .foregroundColor(.pGtextBG)
                    .padding()
                Spacer()
                Button(action: {
                    step11()
                }, label: {
                    Text("Output")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                        .foregroundColor(.pGtextBG)
                })
                .padding()
                
                Text(ResultofSum)
                    .font(.system(.headline))
                Spacer()
            }
                .frame(width: 350, height: 350)
                .background(RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(Color.boxesBG))
        }
    }
    
    func step11() {
        
        print("\n=== Step 11: Function with Return ===")
        
        func sum(ofNumber firstNumber: Int, plusNumber secondNumber: Int) -> Int? {
            
            if firstNumber < 0 || secondNumber < 0 {
                return nil
            }
            let sumOfNumbers = firstNumber + secondNumber
            return sumOfNumbers
        }

        let resultOfSum = sum(ofNumber: 20, plusNumber: 30)
        
        self.ResultofSum = "\(resultOfSum)"
        
        if let resultOfSums = resultOfSum {
            print(resultOfSums)
        } else {
            print("Invalid Output")
        }

        let resultOfsussyBakas = sum(ofNumber: 1, plusNumber: 1)
        print(resultOfsussyBakas ?? 0)
        
        
        
    }
    
}

#Preview {
    PlaygroundTopic8()
}
