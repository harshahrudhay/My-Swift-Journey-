import UIKit



struct UserStructure {
    
    var Name: String
    var Age: Int
    
    mutating func ChangeName(name: String) {
        self.Name = name
    }
    
    
}

class UserClass {
    
    var Name: String
    var Age: Int
    
    init(Name: String, Age: Int) {
        self.Name = Name
        self.Age = Age
    }
    
    func ChangeName(name: String) {
        self.Name = name
    }
    
}



let UserfromClass = UserClass(Name: "class User", Age: 2)

print(UserfromClass.Name)

let UserfromClass2 = UserfromClass

UserfromClass2.Name = "New Name user 2"

print(UserfromClass.Name)

print(UserfromClass2.Name)


var userfromStruct = UserStructure(Name: "Struct User", Age: 2)

print(userfromStruct.Name)

var userfromStruct2 = userfromStruct

userfromStruct2.Name = "New Name user 2"

print(userfromStruct.Name)

print(userfromStruct2.Name)


// Sub Classing



class Insect {
    
    let legs = 6
    
    var name: String {
        return ""
        // use fatalerror() this make sure that we give a name for sub class
    }
    
    func walk() {
        
        print("\(name) is walking")
    }
    
    func stop() {
        print("\(name) is not walking")
    }
    
}


class Ant: Insect {
    
    override var name: String {
        return "ant"
    }
    
    override func walk() {
        print("\(name)s are marching")
    }
    
}

class wasp: Insect {
    
    
    override var name: String {
        return "Wasp"
    }
    
    func fly() {
        print("\(name) is flying")
    }
    
}


let ant = Ant()

ant.legs

ant.name

ant.walk()

ant.stop()



var insects = [Insect]()


let awasp = wasp()
 
insects.append(awasp)
insects.append(ant)

for insect in insects {
    if insect is Ant {
        print("this is ant")
    }
    else if insect is wasp {
        
        let wasp = insect as! wasp
        
        
        print("this is wasp")
        
        wasp.fly()

    }
    
    
    
    if let wasp = insect as? wasp {
        wasp.fly()
    }
    
}
