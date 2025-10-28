//
//  AudioDay67.swift
//  SwiftJourney
//
//  Created by HarshaHrudhay on 10/09/25.
//


import SwiftUI
import AVFoundation

struct AudioDay45: View {
    
    @State var audioPlayer: AVAudioPlayer?
    @State var isPlaying: Bool = false
    @State var currentTime: Double = 0.0
    @State var timer: Timer?
    
    let songs = ["a.mp3", "iphone-2.mp3", "iphone-original-mp3-5843.mp3", "IPL"]
    @State var currentIndex: Int = 0
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue.opacity(0.5), .orange.opacity(0.5), .pink.opacity(0.9)], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            VStack(spacing: 30) {
                Text("Apple Music Player")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Spacer()
                
                VStack(spacing: 20) {
                    Rectangle()
                        .fill(Color.white.opacity(0.3))
                        .frame(width: 250, height: 250)
                        .overlay(
                            Image("stmarylake")
                                .resizable()
                                .scaledToFill()
                        )
                        .cornerRadius(15)
                        .shadow(radius: 10)
                    
                    Text(songTitle())
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                }
                
                Spacer()
                
                if let player = audioPlayer {
                    Slider(value: $currentTime,
                           in: 0...player.duration,
                           onEditingChanged: { editing in
                        if !editing {
                            player.currentTime = currentTime
                            if isPlaying {
                                player.play()
                            }
                        }
                    })
                    .accentColor(.white)
                    .padding(.horizontal)
                    
                    HStack {
                        Text(formatTime(currentTime))
                        Spacer()
                        Text(formatTime(player.duration))
                    }
                    .foregroundColor(.white)
                    .font(.caption)
                    .padding(.horizontal)
                }
                
                HStack(spacing: 70) {
                    
                    Button(action: previousSong) {
                        Image(systemName: "backward.circle")
                            .resizable()
                            .frame(width: 40, height: 40)
                    }
                    
                    Button(action: togglePlay) {
                        Image(systemName: isPlaying ? "pause.circle.fill" : "play.circle.fill")
                            .resizable()
                            .frame(width: 60, height: 60)
                    }
                    
                    Button(action: nextSong) {
                        Image(systemName: "forward.circle")
                            .resizable()
                            .frame(width: 40, height: 40)
                    }
                }
                .foregroundColor(.white)
                
                Spacer()
            }
            .padding()
        }
    }
    
    private func loadSong(index: Int) {
        guard index >= 0 && index < songs.count else { return }
        let songName = songs[index]
        
        if let path = Bundle.main.path(forResource: songName.replacingOccurrences(of: ".mp3", with: ""), ofType: "mp3") {
            let url = URL(fileURLWithPath: path)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.prepareToPlay()
                currentTime = 0
                if isPlaying {
                    audioPlayer?.play()
                    startTimer()
                }
            } catch {
                print("Error loading \(songName): \(error.localizedDescription)")
            }
        }
    }
    
    private func togglePlay() {
        guard let player = audioPlayer else {
            loadSong(index: currentIndex)
            isPlaying = true
            return
        }
        
        if isPlaying {
            player.pause()
            stopTimer()
        } else {
            player.play()
            startTimer()
        }
        isPlaying.toggle()
    }
    
    private func nextSong() {
        currentIndex = (currentIndex + 1) % songs.count
        loadSong(index: currentIndex)
    }
    
    private func previousSong() {
        currentIndex = (currentIndex - 1 + songs.count) % songs.count
        loadSong(index: currentIndex)
    }
    
    private func songTitle() -> String {
        let fileName = songs[currentIndex].replacingOccurrences(of: ".mp3", with: "")
        return fileName.capitalized
    }
    
    private func startTimer() {
        stopTimer()
        timer = Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true) { _ in
            if let player = audioPlayer {
                currentTime = player.currentTime
            }
        }
    }
    
    private func stopTimer() {
        timer?.invalidate()
        timer = nil
    }
    
    private func formatTime(_ time: Double) -> String {
        let minutes = Int(time) / 60
        let seconds = Int(time) % 60
        return String(format: "%d:%02d", minutes, seconds)
    }
}

#Preview {
    AudioDay45()
}
