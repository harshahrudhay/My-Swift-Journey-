import UIKit

// lets us add new variables to the structure
// funcs and computed variables are allowed in extensions 

struct Human {
    var name: String
    var lastName: String
    var age: Int
    var bio: String
     
    var petname: String
    var petlastname: String
    var petfullname: String{
            return petname + " " + petlastname
        }
    
    
    mutating func changeAge(age: Int) {
        self.age = age
    }
}


extension Human {
    var fullName: String {
        return name + " " + lastName
    }
}


let human1 = Human(name: "John", lastName: "Doe", age: 30, bio: "I am a human", petname: "Max", petlastname: "Mustermann")
print(human1.fullName)
print(human1.petfullname)


extension String {
    
    var numberofwords: Int {
        return self.count
    }
}

"haan".count

"jackie".numberofwords
