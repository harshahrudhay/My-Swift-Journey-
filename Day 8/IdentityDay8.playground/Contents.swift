import UIKit
import SwiftUI

//arrays


struct UserViewplayG : View {
    
//    @State var username  = ""
    
    @State var names  : [String] = ["helen", "kate", "jane" ]
    
    var body : some View {
        
        VStack {
            ForEach(names, id: \.self) { name in
                Text(name)
            }
            
            Button {
                names.append("New Name")
            } label: {
                Text("Button")
            }

            
        }
    }
    
}






//Text("Username : \(username)")
//
//Button {
//    username = "Chaneged"
//} label: {
//    Text("Change Name")
//}



// to check if there is chanfge in state through loop then whenever a new addition is added then id will be assigining a value for that
