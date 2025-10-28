//
//  GuessGameView.swift
//  SwiftJourney
//
//  Created by HarshaHrudhay on 04/07/25.
//

import SwiftUI

struct GuessGameView: View {
    
    @State var correctAnswer = 0
    @State var score = 0
    @State var gameTitle = "?"
    @State var gameSubTitle = ""
    
    
    var body: some View {
        ZStack {
            VStack{
                Text(gameTitle)
                    .font(.system(size: 30, weight: .bold, design: .monospaced))
                    .foregroundColor(Color(red: 0.071, green: 0.12, blue: 0.309))
                    .padding(.vertical, 50)
                Text(gameSubTitle)
                    .font(.system(size: 20, weight: .semibold, design: .monospaced))
                    .foregroundColor(Color(red: 0.585, green: 0.299, blue: 0.181))
                    .padding(.bottom, 100)
                
                HStack{
                    Text("Score : \(score)")
                        .font(.system(size: 20, weight: .bold, design: .monospaced))
                    
                }
                
                
                Button(action: {
                    check(answer: 0)
                    
                }, label: {
                    Image("cat")
                        .frame(maxWidth: .infinity)
                        .frame(height: 70)
                        .background(Color(red: 0.144, green: 0.301, blue: 0.438))
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                })
                Button(action: {
                    check(answer: 1)
                }, label: {
                    Image("dog")
                        .frame(maxWidth: .infinity)
                        .frame(height: 70)
                        .background(Color(red: 0.144, green: 0.301, blue: 0.438))
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                })
                Button(action: {
                    check(answer: 2)
                    
                }, label: {
                    Image("fox")
                        .frame(maxWidth: .infinity)
                        .frame(height: 70)
                        .background(Color(red: 0.141, green: 0.301, blue: 0.438))
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                })
                Spacer()
            }
            
            
            .padding()
        }
        .background(Color(red: 0.937, green: 0.893, blue: 0.822))
    }
    
     func check(answer: Int) {
        if answer == correctAnswer {
            score += 1
            gameTitle = "Correct Answer!"
        } else {
            if score != 0 {
                score -= 1
            }
            gameTitle = "Incorrect Answer!"
        }
         if correctAnswer == 0 {
             gameSubTitle = "Correct answer is Cat"
         } else if correctAnswer == 1 {
             gameSubTitle = "Correct answer is Dog"
         } else if correctAnswer == 2 {
             gameSubTitle = "Correct answer is Fox"
         }
        randomizeCorrectAnswer()
    }
    
     func randomizeCorrectAnswer() {
    let randomCorrectAnswer = Int.random(in: 0..<3)
        correctAnswer = randomCorrectAnswer
    }
    
    
 
}

#Preview {
    GuessGameView()
}
