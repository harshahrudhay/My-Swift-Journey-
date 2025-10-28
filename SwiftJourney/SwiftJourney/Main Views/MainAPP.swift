//
//  MainAPP.swift
//  SwiftJourney
//
//  Created by HarshaHrudhay on 27/10/25.
//



import SwiftUI

struct MainAPP: View {
    
    @State private var isshowDaily = false
    
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                
                LinearGradient(
                    gradient: Gradient(colors: [
                        Color(.systemGray6),
                        Color(.systemGray5)
                    ]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea()
                
                ScrollView(showsIndicators: false) {
                    
                    VStack(spacing: 20) {
                         
                        GeometryReader { geo in
                            ZStack(alignment: .bottomLeading) {
                                Image("banner")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: geo.size.width, height: 220)
                                    .clipped()
                                    .overlay(
                                        LinearGradient(
                                            gradient: Gradient(colors: [Color.black.opacity(0.2), Color.black.opacity(0.6)]),
                                            startPoint: .top,
                                            endPoint: .bottom
                                        )
                                    )
                                
                                Image("harsha")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 190, height: 190)
                                    .clipShape(Circle())
                                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                                    .shadow(radius: 10)
                                    .offset(x: 30, y: 60)
                            }
                            .frame(height: 220) // Important: locks the banner height
                        }
                        .frame(height: 220)
                        .padding(.bottom, 80)
                        
                        VStack(spacing: 14) {
                            Text("Hrudhaya HarshaVardhan")
                                .font(.system(size: 26, weight: .bold))
                                .foregroundColor(.black)
                                .multilineTextAlignment(.center)
                                .padding(.horizontal, 24)
                            
                            Text("iOS Developer · Cybersecurity Enthusiast · UI/UX Designer · Lifelong Learner")
                                .font(.system(size: 18, weight: .semibold))
                                .foregroundColor(.black)
                                .multilineTextAlignment(.center)
                                .padding(.horizontal, 28)
                            
                            Text("""
                            I’m a SwiftUI and UIKit developer with a strong focus on design and usability. I’ve built apps with Swift, Flutter, and Figma, and contributed to publishing on the App Store. I also work with Python, Linux, and AI projects. My goal: to keep creating elegant apps and clean designs that solve real problems.
                            """)
                            .font(.system(size: 18, weight: .regular))
                            .foregroundColor(.black)
                            .multilineTextAlignment(.leading)
                            .lineSpacing(4)
                            .padding(.horizontal, 30)
                            .padding(.top, 8)
                        }
                        .padding(.horizontal)


                        
                        VStack(spacing: 15) {
                            Button(action: {
                                isshowDaily = true
                            }) {
                                Text("View Day Tasks")
                                    .font(.system(size: 16, weight: .semibold))
                                    .foregroundColor(.black)
                                    .frame(maxWidth: .infinity)
                                    .frame(height: 50)
                                    .clipShape(RoundedRectangle(cornerRadius: 12))
                                    
                            }
                            .buttonStyle(.glass)
                            .padding(.horizontal, 60)
                        }
                        .padding(.top, 20)
                        
                        Spacer(minLength: 60)
                    }
                }
            }
            .navigationTitle("Welcome to Swift Journey")
            .navigationBarTitleDisplayMode(.inline)
            .navigationDestination(isPresented: $isshowDaily) {
                MainListView()
            }
        }
    }
}


#Preview {
    NavigationStack{
        MainAPP()
    }
}
