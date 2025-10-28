//
//  ButtonDay2.swift
//  SwiftJourney
//
//  Created by HarshaHrudhay on 27/10/25.
//

import SwiftUI

struct ButtonDay2: View {
    
    var body: some View {
        
        VStack{
            
           Button("Tap Button", action: {                            // Title Ket, action lable
                print("Tapped Button")
           })
            
           .padding()
            
            Button(action: {                                        // same like above but reverse
                print("gooday")
            }, label: {
                HStack{
                    Image(systemName: "person.fill")
                    Text("Tap Button 2")
                        .font(.system(size: 20, weight: .semibold))
                        .foregroundStyle(Color.gray)
                }
            })
            .padding()
            
            Button("Tap Button 3", role: .cancel , action: {         // This gives alerts as role helps application
                print("tappppppped")
            })
            
        }
        
    }
}


#Preview {
    ButtonDay2()
}
