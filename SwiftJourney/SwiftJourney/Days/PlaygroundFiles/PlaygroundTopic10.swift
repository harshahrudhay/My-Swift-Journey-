//
//  PlaygroundTopic10.swift
//  Netaxis
//
//  Created by Netaxis_IOS on 10/07/25.
//

import SwiftUI

struct PlaygroundTopic10: View {
    
    @State var SortedNumbers : [Int] = []
    
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
                    topic10()
                }, label: {
                    Text("Output")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                        .foregroundColor(.pGtextBG)
                })
                .padding()
                
                Text("Sorted Numbers are \(SortedNumbers)")
                    .font(.system(.headline))
                Spacer()
            }
                .frame(width: 350, height: 350)
                .background(RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(Color.boxesBG))
        }
    }
    
    func topic10() {
        
        print("\n=== Step 13: Sorting ===")
        
        
        var numberToChange = 5
        var anotherNumber = 8
        
        func addOne(to number: inout Int) {
            
            number = number + 3
        }
        
        addOne(to: &numberToChange)
        addOne(to: &anotherNumber)
        
        print(numberToChange)
        print(anotherNumber)
        
        
        enum SortOrder {
            case asce, desc
        }
        
        func sort(numbers: [Int], inOrder order: SortOrder = .desc) {
            
            let sortedNumbers: [Int]
            
            
            switch order {
            case .asce:
                sortedNumbers = numbers.sorted()
            case .desc:
                sortedNumbers = numbers.sorted(by: >)
            }
            print("\(sortedNumbers)")
            self.SortedNumbers = sortedNumbers

        }
        
        sort(numbers: [5, 8, 3, 9], inOrder: .asce)
        
        
    }
    
}

#Preview {
    PlaygroundTopic10()
}
