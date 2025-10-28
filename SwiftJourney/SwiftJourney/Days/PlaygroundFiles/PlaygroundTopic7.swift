//
//  PlaygroundTopic7.swift
//  Netaxis
//
//  Created by Netaxis_IOS on 09/07/25.
//

import SwiftUI

struct PlaygroundTopic7: View {
    
    @State var SelectedColor: String = ""
    
    var body: some View {
        
        ZStack {
            Color.playgroundBG
                .ignoresSafeArea()
            
            VStack {
                Text("Enums")
                    .font(.system(size: 20))
                    .foregroundColor(.pGtextBG)
                    .padding()
                Spacer()
                Button(action: {
                    step8()
                }, label: {
                    Text("Output")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                        .foregroundColor(.pGtextBG)
                })
                .padding()
                
                Text(SelectedColor)
                    .font(.system(.headline))
                Spacer()
            }
                .frame(width: 350, height: 350)
                .background(RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(Color.boxesBG))
        }
    }
    
    func step8() {
        print("\n=== Step 8: Enums ===")
        enum Colors {
            case blue, red, yellow, blue1, red1, yellow1, blue2, red2, yellow2
        }
        var selectcolor = Colors.blue
        
        self.SelectedColor = "\(selectcolor)"
        
        switch selectcolor {
        case .yellow2:
            print("yellow2")
        default:
            print("default")
        }
    }
    
}

#Preview {
    PlaygroundTopic7()
}
