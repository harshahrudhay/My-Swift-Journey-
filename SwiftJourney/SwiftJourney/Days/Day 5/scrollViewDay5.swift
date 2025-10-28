//
//  scrollViewDay13.swift
//  SwiftJourney
//
//  Created by HarshaHrudhay on 07/07/25.
//

import SwiftUI

struct scrollViewDay5: View {
    
    var name = "Hello"
    
    var body: some View {
        
        
        
        VStack {
            ScrollView{
//                for number in 1...10 {
//                    if number % 2 == 0 {
//                        print(number)
//                    }
//                }
                Text(name)
            }
            
        }
        .frame(width: 300)
//        .background(Color.blue)
    }
}

#Preview {
    scrollViewDay5()
}


//
//ScrollView(.horizontal){
//    HStack {
//        Text("Hello")
//
//        Text("Hello")
//    }
//}
