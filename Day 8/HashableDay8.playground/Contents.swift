import UIKit
import SwiftUI

// hashable for dictionary and set
// default identity and also have .self
// dictionary have keys which are id's

var grades: Set = [1,2,3,4,5]

grades.insert(6)

grades.insert(1)

print(grades.count)


let studentGrades: [String: Int] = ["John" : 85, "Mary" : 92, "Alex" : 88]      // keys must be unique dictioniries always go with hashable




import Foundation
// for date module


struct User {
    let age: Int
    let name: String
}


struct Account {
    let id: Int
    let balance: Double
    let user: User
    let date: Date
}

extension User: Hashable {
    
    static func == (lhs: User, rhs: User) -> Bool {
        return lhs.name == rhs.name
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
    }
}

extension Account: Hashable {
    
    static func == (lhs: Account, rhs: Account) -> Bool {
        return lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}


let user1 = User(age: 20, name: "Harsha")
let user2 = User(age: 22, name: "Hrudhay")

let users = [
    User(age: 20, name: "haan"),
    User(age: 22, name: "leena")
]


List(users , id: \.self) {user in
    Text(user.name)
        }
    
print(users)

print(user1.name)
