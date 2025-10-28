//
//  MainListView.swift
//  SwiftJourney
//
//  Created by HarshaHrudhay on 27/10/25.
//

import SwiftUI

struct MainListView: View {
    
    let days: [Day] = [
        
        Day(name: "Day 1", topics: [
            Topic(name: "Size and Position", destination: AnyView(sizeandpositionDay1())),
            Topic(name: "V H Z Stack", destination: AnyView(StackVHZDay1()))
        ]),
        
        Day(name: "Day 2", topics: [
            Topic(name: "Button Types", destination: AnyView(ButtonDay2())),
            Topic(name: "Colours ", destination: AnyView(ColorsDay2())),
            Topic(name: "Images Types", destination: AnyView(ImagesViewDay2())),
            Topic(name: "SF Symbols Types", destination: AnyView(SFSymbolsViewDay2())),
            Topic(name: "Shapes Examples", destination: AnyView(ShapesDay2()))
        ]),
        
        Day(name: "Day 3", topics: [
            Topic(name: "@State", destination: AnyView(AtstateDay3())),
            Topic(name: "@Binding", destination: AnyView(BindingDay3())),
            Topic(name: "Order Of Modifiers", destination: AnyView(orderofmodifiersDay3())),
            Topic(name: "Text Editor", destination: AnyView(texteditorDay3())),
            Topic(name: "Text Fields", destination: AnyView(TextfieldsDay3()))
        ]),
        
        Day(name: "Day 4", topics: [
            Topic(name: "Presenting Views", destination: AnyView(presentingSheetDay4()))
        ]),
        
        Day(name: "Day 5", topics: [
            Topic(name: "Sign In Page", destination: AnyView(signinPageDay5())),
            Topic(name: "Sign Up Page ", destination: AnyView(signUpViewDay5())),
            Topic(name: "Scramble Words Demo", destination: AnyView(scramblewordsDay5())),
            Topic(name: "List Types", destination: AnyView(ListviewDay5())),
            Topic(name: "Scroll Example", destination: AnyView(scrollViewDay5()))
        ]),
        
        Day(name: "Day 6", topics: [
            Topic(name: "Tap Game", destination: AnyView(tapAppDay6()))
        ]),
        
        Day(name: "Day 7", topics: [
            Topic(name: "Structure Example", destination: AnyView(StructuresDay7()))
        ]),
        
        Day(name: "Day 9", topics: [
            Topic(name: "Sign Up", destination: AnyView(SignUpPasswordViewDay9())),
            Topic(name: "Sign In", destination: AnyView(SignupUSernameEmailViewDay9())),
            Topic(name: "Sample View", destination: AnyView(ViewExampleDay9()))
        ]),
        
        Day(name: "Day 10-20", topics: [
            Topic(name: "To Do App", destination: AnyView(ToDoAppViewDay15( newpriority:ToDoPriority.high)))
        ]),
        
        Day(name: "Day 20-22", topics: [
            Topic(name: "Guess Game", destination: AnyView(GuessGameView()))
        ]),
        
        Day(name: "Day 22-40", topics: [
            Topic(name: "In Between Days", destination: AnyView(InbetweenDaysView()))
        ]),
        
        
        
        Day(name: "Day 41-42", topics: [
            Topic(name: "Basic Grid Examples", destination: AnyView(BasicGridDay41())),
            Topic(name: "Grid Examples ", destination: AnyView(GridExampleDay41())),
            Topic(name: "Lazy Flexiable Grids", destination: AnyView(LazyFlexibleDay42())),
            Topic(name: "Lazy Grids", destination: AnyView(LazyGridDay42())),
            Topic(name: "Scroll and Grids", destination: AnyView(ScrollandGridsDay42()))
        ]),
        
        Day(name: "Day 43", topics: [
            Topic(name: "Gestures Examples", destination: AnyView(GesturesDay43())),
            Topic(name: "Gestures Examples More", destination: AnyView(Gesturespart2Day43()))
        ]),
        
        Day(name: "Day 44", topics: [
            Topic(name: "Home Screen Design", destination: AnyView(UIDesignDay44()))
        ]),
        
        Day(name: "Day 45-48", topics: [
            Topic(name: "Music Player", destination: AnyView(AudioDay45()))
        ]),
        
        Day(name: "Day 49-50", topics: [
            Topic(name: "PlayGround Topic 1", destination: AnyView(PlaygroundDay1())),
            Topic(name: "PlayGround Topic 2", destination: AnyView(PlaygroundTopic2())),
            Topic(name: "PlayGround Topic 3", destination: AnyView(PlaygroundTopic3())),
            Topic(name: "PlayGround Topic 4", destination: AnyView(PlaygroundTopic4())),
            Topic(name: "PlayGround Topic 5", destination: AnyView(PlaygroundTopic5())),
            Topic(name: "PlayGround Topic 6", destination: AnyView(PlaygroundTopic6())),
            Topic(name: "PlayGround Topic 7", destination: AnyView(PlaygroundTopic7())),
            Topic(name: "PlayGround Topic 8", destination: AnyView(PlaygroundTopic8())),
            Topic(name: "PlayGround Topic 9", destination: AnyView(PlaygroundTopic9())),
            Topic(name: "PlayGround Topic 10", destination: AnyView(PlaygroundTopic10()))
        ])
        
        
    ]
    
    let columns = [
        GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(days) { day in
                        NavigationLink(destination: DayDetailListView(day: day)) {
                            CubeView(title: day.name)
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("Swift Journey")
        }
    }
}

struct CubeView: View {
    let title: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(
                    LinearGradient(colors: [.purple, .blue], startPoint: .topLeading, endPoint: .bottomTrailing)
                )
                .shadow(radius: 5)
                .rotation3DEffect(.degrees(8), axis: (x: 1, y: 0, z: 0))
            
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
                .padding()
        }
        .frame(height: 100)
        .scaleEffect(0.95)
        .animation(.easeInOut, value: title)
    }
}

#Preview {
    MainListView()
}




struct DayDetailListView: View {
    let day: Day
    
    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                ForEach(day.topics) { topic in
                    NavigationLink(destination: topic.destination) {
                        DayTopicRow(topic: topic.name)
                            .padding(.horizontal)
                    }
                }
            }
            .padding(.vertical, 20)
        }
        .navigationTitle(day.name)
        .background(
            LinearGradient(colors: [.blue.opacity(0.15), .purple.opacity(0.15)],
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .ignoresSafeArea()
        )
    }
}

struct DayTopicRow: View {
    var topic: String
    
    var body: some View {
        HStack {
            Text(topic)
                .font(.system(size: 18, weight: .semibold))
                .foregroundColor(.black)
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .foregroundColor(.black.opacity(0.9))
        }
        .padding()
        .frame(maxWidth: .infinity)
        .padding(.horizontal)
        .glassEffect(.clear.interactive())
    }
}

#Preview {
    NavigationStack {
        DayDetailListView(day: .example)
    }
}


