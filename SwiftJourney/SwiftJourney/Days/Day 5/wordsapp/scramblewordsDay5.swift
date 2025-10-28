//
//  scramblewordsDay13.swift
//  SwiftJourney
//
//  Created by HarshaHrudhay on 07/07/25.
//

import SwiftUI

struct scramblewordsDay5: View {
    
    
@State var letters: [String] = ["A", "P", "P", "L", "E"]
    
    
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Color.bgscramble
                    .ignoresSafeArea()
                VStack {
                    VStack{
                        Spacer()
                        Image("apple")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                            .padding()
                        Spacer()
                        belowPictureStack()
                    }
                    .frame(width: geometry.size.width * 0.9, height: geometry.size.width * 0.9)
                    .overlay {
                        RoundedRectangle(cornerRadius: 15 )
                            .stroke(Color.bgborder, lineWidth: 4 )
                    }
                    Text("Score : 0")
                        .font(.system(size: 30))
                        .foregroundStyle(Color.white)
                        .padding(.top)
                    HStack{
                        ForEach(letters, id: \.self) { letter in
                            letterView(character: letter)
                        }
                    }
                }
                
            }
        }

    }
}

#Preview {
    scramblewordsDay5()
}

struct letterView: View {
    
    let character: String
    
    var body: some View {
        Text(character)
            .font(.system(size: 18, weight: .semibold))
            .foregroundStyle(Color.white)
            .frame(width: 30, height: 30)
            .background(Color.white.opacity(0.4))
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

struct belowPictureStack: View {
    var body: some View {
        HStack {
            VStack {
                letterView(character: "")
                Rectangle()
                    .fill(Color.white)
                    .frame(width: 25, height: 2)
            }
            VStack {
                letterView(character: "")
                Rectangle()
                    .fill(Color.white)
                    .frame(width: 25, height: 2)
            }
            VStack {
                letterView(character: "")
                Rectangle()
                    .fill(Color.white)
                    .frame(width: 25, height: 2)
            }
            VStack {
                letterView(character: "")
                Rectangle()
                    .fill(Color.white)
                    .frame(width: 25, height: 2)
            }
            VStack {
                letterView(character: "")
                Rectangle()
                    .fill(Color.white)
                    .frame(width: 25, height: 2)
            }
        }
        .padding(.bottom, 20)
    }
}
