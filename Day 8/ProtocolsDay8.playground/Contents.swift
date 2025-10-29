import UIKit
import SwiftUI

// struct must have a property from the fruit protocol if we commit to it
// just like struct view require a body else it will show a error
// in structures
// get means retrive the value from body
// set can modify the value in body need to be a var

protocol Fruit {
    var color: String { get }
    var size: Int { get }
    var taste: String { get }
    var goodforhealth: Bool { get }
}

protocol food {
//    var cooked: Bool { get set }
    func canbeEaten()
}

struct Apple  {
    
//    let weight: Double
    
}

struct Myapp : View {
    var body: some View {
        Text("Hello, World!")
    }
}


extension Apple: food {
    func canbeEaten() {
        
    }
}

extension Apple: Fruit {
    var color: String {
        return "Red"
    }
//    let color: String = "Red"
    var size: Int {
            return 1
    }
    var taste: String {
        return "Sweet"
    }
    var goodforhealth: Bool  {
        return true
    }
}


let anotherapple: Apple = Apple()
let anotherapple3 = Apple()


struct orange  {
    var taste = "sweet"
    var goodforhealth = true
}


extension orange{
    var color: String {  "Orange"  }
    var size: Int { 1  }
}

let randomfruit: Fruit = orange.self as! Fruit

let randomfruit2: Fruit = Apple()
