import UIKit



var user1 = User(name: "John")

var user2 =  user1


var user4 = User(name: "manna")

user2.name = "Mary"

var user3 = User(name: "khan")
var user5 = User(name: "joif")


print("\(user1.name)")
print("\(user2.name)")
print("\(user3.name)")



struct User {
    
    var name : String
    
                    init(name: String) {
        self.name = name
    }
    
    mutating func changeName(name: String) {
        self.name = name
    }
    
}

user2.changeName(name: "john")

user3.changeName(name: "milli")
 print("\(user3.name)")
