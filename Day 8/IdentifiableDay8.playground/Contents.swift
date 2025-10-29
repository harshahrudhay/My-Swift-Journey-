import UIKit
import SwiftUI

// uuid is identifiable

struct user: Identifiable {
    let id = UUID()
    let name : String
    
    
    
}




struct UserViewplayG : View {
    
    
    @State var users = [user(name: "krillan"), user(name: "Roshi"), user(name: "Brooly")]
    
    var body : some View {
        
        VStack {
            ForEach(users) { user in
                Text(user.name)
            }
            
            Button {
                users.append(user(name: "Gohan"))
            } label: {
                Text("Button")
            }
            
        }
        
    }
}


