//
//  tapAppDay14.swift
//  SwiftJourney
//
//  Created by HarshaHrudhay on 08/07/25.
//

import SwiftUI
import Combine

struct tapAppDay6: View {
    
    let picturesinmemory = ["turtle", "duck", "horse"]
    @State private var currentpictureindex = 0
    @State private var targetIndex = 1
    @State private var timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    @State private var score = 0
    @State private var alert = false
    @State private var alertTitle : String = ""
    @State private var alertMessage : String = ""
    @State private var isGameRunning : Bool = false
    @State private var difficulty = Difficulty.easy
    var randomTarget: Int {
        return Int.random(in: 0..<picturesinmemory.count)
    }
    
    enum Difficulty : Double {
        case easy = 1 , medium = 0.5 , hard = 0.1
        
        var title: String {
            switch self {
            case .easy:
                return "Easy"
            case .medium:
                return "Medium"
            case .hard:
                return "Hard"
            }
        }
    }
    
    
    var body: some View {
        ZStack {
            Color.tapbg
                .ignoresSafeArea()
            VStack {
                HStack {
                    Menu("Difficulty") {
                        Button(Difficulty.easy.title, action: {
                            timer = Timer.publish(every: Difficulty.easy.rawValue, on: .main, in: .common).autoconnect()
                        })
                        Button(Difficulty.medium.title, action: {
                            timer = Timer.publish(every: Difficulty.medium.rawValue, on: .main, in: .common).autoconnect()
                        })
                        Button(Difficulty.hard.title, action: {
                            timer = Timer.publish(every: Difficulty.hard.rawValue, on: .main, in: .common).autoconnect()
                        })
                        
                    }
                    Spacer()
                    Text("Score : \(score)")
                    
                }
                .padding(.horizontal)
                Image(picturesinmemory[currentpictureindex])
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .onTapGesture {
                        isGameRunning = false
                        timer.upstream.connect().cancel()
                        if currentpictureindex == targetIndex {
                            score += 1
                            alertTitle = "Succeessss"
                            alertMessage = "You found the picture"
                        } else {
                            alertTitle = "Incorrect"
                            alertMessage = "Try again"
                        }
                        alert = true
                    }
                    
                Text(picturesinmemory[targetIndex])
                    .font(.system(size: 20, weight: .semibold))
                    .padding(.top)
                if !isGameRunning {
                    Button("Restart Game", action: {
                        isGameRunning = true
                        targetIndex = randomTarget
                        timer = Timer.publish(every: difficulty.rawValue, on: .main, in: .common).autoconnect()
                    })
                    .padding()
                }
                
                
            }
            
            
            .onReceive(timer, perform: { _ in
                changePicture()
            })
        }
        .alert(alertTitle, isPresented: $alert) {
            Button("OK", action: {
                
            })
        } message: {
            Text(alertMessage)
        }
    }
    
    func changePicture() {
        if currentpictureindex == picturesinmemory.count - 1 {
            currentpictureindex = 0
        } else {
            currentpictureindex +=  1
        }
    }
    
}

#Preview {
    tapAppDay6()
}
