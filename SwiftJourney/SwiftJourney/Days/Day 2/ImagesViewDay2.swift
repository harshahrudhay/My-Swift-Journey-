//
//  ImagesViewDay2.swift
//  SwiftJourney
//
//  Created by HarshaHrudhay on 27/10/25.
//

import SwiftUI

struct ImagesViewDay2: View {
    
    var body: some View {
        
        VStack{
            
            Image("tree")                                                                   // switching with Images in different color modes
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
                .background(Color.orange)
                .cornerRadius(40)
                .padding()
            Image("treeimage")                                                              // icons in PNG Format
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
                .background(Color.orange)
                .cornerRadius(50)
                .padding()
            Image("treeimagedif")                                                           // icon rendered as template image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
                .background(Color.orange)
                .cornerRadius(50)
                .foregroundStyle(Color.gray)
                .padding()
            Image("treejpg")                                                                // Image in jpg format
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity)
                .frame(height: 200)
                .background(Color.orange)
                .cornerRadius(50)
                .padding()
        }
    }
}

#Preview {
    ImagesViewDay2()
}
