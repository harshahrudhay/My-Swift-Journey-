//
//  File.swift
//  SwiftJourney
//
//  Created by HarshaHrudhay on 28/10/25.
//

import Foundation
import SwiftUI



struct InbetweenDaysView: View {
    var body: some View {
        VStack(spacing: 24) {
            Text("Few apps made during these days are already uploaded on my GitHub.")
                .font(.title3)
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
                .foregroundColor(.black.opacity(0.9))
                .padding(.horizontal)

            Link(destination: URL(string: "https://github.com/harshahrudhay")!) {
                Label("View on GitHub", systemImage: "link")
                    .font(.system(size: 18, weight: .semibold))
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(
                        RoundedRectangle(cornerRadius: 16)
                            .fill(LinearGradient(colors: [.purple, .blue], startPoint: .leading, endPoint: .trailing))
                    )
                    .foregroundColor(.white)
                    .shadow(color: .black.opacity(0.2), radius: 6, x: 2, y: 2)
            }
            .padding(.horizontal, 32)
        }
        .padding(.vertical, 40)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            LinearGradient(colors: [.blue.opacity(0.2), .purple.opacity(0.3)],
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .ignoresSafeArea()
        )
        .navigationTitle("Inbetween Days")
    }
}

#Preview {
    NavigationStack {
        InbetweenDaysView()
    }
}
