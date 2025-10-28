//
//  PlaygroundTopic4.swift
//  Netaxis
//
//  Created by Netaxis_IOS on 09/07/25.
//

import SwiftUI

struct PlaygroundTopic4: View {
    
    @State var greeting : String = ""
    
    var body: some View {
        
        ZStack {
            Color.playgroundBG
                .ignoresSafeArea()
            
            VStack {
                Text("Guard")
                    .font(.system(size: 20))
                    .foregroundColor(.pGtextBG)
                    .padding()
                Spacer()
                Button(action: {
                    step6()
//                    greet(naaame: "hello welcome")
                }, label: {
                    Text("Output")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                        .foregroundColor(.pGtextBG)
                })
                .padding()
                
                Text(greeting)
                    .font(.system(.headline))
                Spacer()
            }
                .frame(width: 350, height: 350)
                .background(RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(Color.boxesBG))
        }
    }
    
    
//    func step5() {
//        self.greeting = "\n=== Step 5: guard ==="
//        print("\n=== Step 5: guard ===")
//        func greet(naaame: String?) {
//            guard let unwraappedName = naaame else {
//                print("Name is missing.")
//                return
//            }
//            print("Hello, \(unwraappedName)")
//        }
//        greet(naaame: nil)
//}

    
    
    
    
    func greet(naaame: String?) {
        guard let unwraappedName = naaame else {
            self.greeting = "Name is missing."
            print("Name is missing.")
            return
        }
        self.greeting = "Hello, \(unwraappedName)"
        print("Hello, \(unwraappedName)")
    }
    
    
    func step6() {
        print("\n=== Step 5: guard ===")
        greet(naaame: nil)
    }
    
}

#Preview {
    PlaygroundTopic4()
}
