import UIKit

struct user {
    let name: String
    let email: String
    let id: Int
}

let userOne = user(name: "John", email: "john@example.com", id: 1)

let userTwo = user(name: "Jane", email: "jane@example.com", id: 2)

let userThree = user(name: "John", email: "john@example.com", id: 1)

let userFour = user(name: "Jon", email: "jane@example.com", id: 3)


extension user : Equatable {
    
    static func == (lhs: user, rhs: user) -> Bool {
        return lhs.id == rhs.id && lhs.email == rhs.email
    }
    
}



if userOne == userTwo {
    print("Same user")
} else {
    print("diffirent users")
}


if userThree == userOne {
    print("Same user")
} else {
    print("diffirent users")
}




// declaring Equatable to the struct is enough no need to declare it everytime and also no need of using extensions

struct coder: Equatable {
    let lang: String
    let email: String
    let id: Int
}


//extension coder {
//    
//}



let coder1 = user(name: "John", email: "john@example.com", id: 1)

let coder2 = user(name: "Jane", email: "jane@example.com", id: 2)

let coder3 = user(name: "John", email: "john@example.com", id: 1)

let coder4 = user(name: "Jon", email: "jane@example.com", id: 3)



if coder1 == coder2 {
    print("Same user")
} else {
    print("diffirent users")
}


if coder3 == coder1 {
    print("Same user")
} else {
    print("diffirent users")
}
