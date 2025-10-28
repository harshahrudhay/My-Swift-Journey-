//
//  DataModels.swift
//  SwiftJourney
//
//  Created by Netaxis_IOS on 28/10/25.
//

import Foundation
import SwiftUI

struct Topic: Identifiable {
    let id = UUID()
    let name: String
    let destination: AnyView
}

struct Day: Identifiable {
    let id = UUID()
    let name: String
    let topics: [Topic]
}


extension Day {
    static let example = Day(
        name: "Day 1",
        topics: [
            Topic(name: "Intro to Swift", destination: AnyView(Text("Welcome to Swift!"))),
            Topic(name: "Variables", destination: AnyView(Text("Learn about variables."))),
            Topic(name: "Loops", destination: AnyView(Text("For, While, Repeat Loops")))
        ]
    )
}
