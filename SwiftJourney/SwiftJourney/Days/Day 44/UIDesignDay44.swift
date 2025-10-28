//
//  UIDesignDay64.swift
//  SwiftJourney
//
//  Created by HarshaHrudhay on 08/09/25.
//


import SwiftUI

struct UIDesignDay44: View {
    
//    @State private var offset = CGSize.zero
    @State private var isDragging = false
    @State private var currentAmount = 0.0
    @State private var finalAmount = 1.0
    @State private var secondcurrentAmount = Angle.zero
    @State private var secondfinalAmount = Angle.zero
    @State private var isNotificationActive = false
    
    var body: some View {
        
        NavigationView {
            ScrollView {
                ZStack {
                    LinearGradient(colors: [.white,.blue.opacity(0.8)], startPoint: .top, endPoint: .bottom)
                        .ignoresSafeArea()
                    
                    VStack(alignment: .leading, spacing: 24) {
                        
                        Text("For You")
                            .font(.system(size: 30, weight: .bold))
                        
                        VStack(alignment: .leading) {
                            HStack {
                                Text("Projects Summary")
                                    .font(.title2).bold()
                                Spacer()
                                Button(action: {
                                    
                                }) {
                                    Label("OverView", systemImage: "chevron.up.chevron.down" )
                                }
                                .foregroundColor(.blue)
                            }
                            
                            LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 16), count: 2), spacing: 16) {
                                SummaryCard(title: "2", subtitle: "Active Projects")
                                SummaryCard(title: "50", subtitle: "Completed ")
                                SummaryCard(title: "1", subtitle: "Pending ")
                                SummaryCard(title: "2", subtitle: "Assessments ")
                            }
                        }
                        
                        VStack(alignment: .leading) {
                            Text("Shortcuts")
                                .font(.title2).bold()
                            
                            HStack(spacing: 16) {
                                ShortcutCard(title: "Best Projects", icon: "wand.and.stars")
                                ShortcutCard(title: "top notch UI", icon: "cube.transparent")
                            }
                        }
                        
                        VStack(alignment: .leading) {
                            HStack {
                                Text("Up Coming Projects")
                                    .font(.title2).bold()
                                Spacer()
                                Image(systemName: "arrow.clockwise.circle")
                                    .foregroundColor(.blue)
                            }
                            
                            VStack(spacing: 16) {
                                PointerCard(name: "Scrumdinger",
                                            card: "",
                                            detail: "Scrums are short meetings where each attendee discusses what they accomplished yesterday, what they are working on today, and any obstacles that might impact their work.")
                                PointerCard(name: "Recipe Generator",
                                            card: "",
                                            detail: "Recipe generator application generates cooking recipes with the ingridents that you have in your pantry")
                            }
                        }
                    }
                    .padding()
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {}) {
                        Image(systemName: "gear").foregroundColor(.blue)
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        
                        isNotificationActive.toggle()
                    }) {
                        Image(systemName: isNotificationActive ? "bell.fill" : "bell")
                            .foregroundColor(isNotificationActive ? .red : .blue)
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {}) {
                        Text("Edit")
                            .foregroundColor(.blue)
                    }
                }
            }
        }
        .tabViewStyle(DefaultTabViewStyle())
        .toolbarBackground(Color.white, for: .navigationBar)
        .tabView
    }
}

struct SummaryCard: View {
    
    var title: String
    var subtitle: String
    
    var body: some View {
        VStack {
            Text(title)
                .font(.title).bold()
                .foregroundColor(.black)
            Text(subtitle)
                .font(.subheadline)
                .foregroundColor(.gray)
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(Color(UIColor.systemGray6))
        .cornerRadius(12)
    }
}

struct ShortcutCard: View {
    var title: String
    var icon: String
    
    var body: some View {
        VStack {
            Image(systemName: icon)
                .font(.title)
                .foregroundColor(.blue)
            Text(title)
                .font(.footnote)
                .multilineTextAlignment(.center)
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(Color(UIColor.systemGray6))
        .cornerRadius(12)
    }
}

struct PointerCard: View {
    var name: String
    var card: String
    var detail: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack {
                Image(systemName: "note")
                
                Text(name)
                    .font(.headline)
            }
            Text(card)
                .font(.subheadline)
                .foregroundColor(.blue)
            Text(detail)
                .font(.footnote)
                .foregroundColor(.gray)
        }
        .padding()
        .background(Color(UIColor.systemGray6))
        .cornerRadius(12)
    }
}

extension View {
    var tabView: some View {
        TabView {
            self
                .tabItem {
                    Image(systemName: "square.grid.2x2.fill")
                    Text("For You")
                }
            Text("Projects")
                .tabItem {
                    Image(systemName: "lightbulb")
                    Text("Pointers")
                }
            Text("Ongoing")
                .tabItem {
                    Image(systemName: "dollarsign.circle")
                    Text("Offers")
                }
            Text("Cards")
                .tabItem {
                    Image(systemName: "creditcard")
                    Text("Cards")
                }
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
        }
    }
}

struct SearchView: View {
    @State  var note = ""
    var body: some View {
        ZStack {
            LinearGradient(colors: [.white.opacity(0.4), .black.opacity(0.3)], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack {
                ZStack {
                    TextField("Search projects...", text: $note)
                        .padding(.horizontal, 30)
                        .padding(7)
                        .background(Color.white)
                        .cornerRadius(15)
                        .padding()
                    Image(systemName: "magnifyingglass")
                        .frame(width: 20, height: 20)
                        .padding(.trailing, 320)
                }
                Spacer()
            }
        }
    }
}

#Preview {
    UIDesignDay44()
}
