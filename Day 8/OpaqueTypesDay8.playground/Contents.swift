import UIKit
import SwiftUI



struct OpaqueTypesDay17: View {
    
    var body: Text {
        
        Text("OpaqueTypesDay17")
        
    }
    
    
}


struct type2: View {
    
    
    var body: Button<Text> {
        
        Button {
            
        } label: {
            Text("Press")
        }
        
    }
}


struct type3: View {
    
    
    var body: some View {
        
        VStack{
            Button {
                
            } label: {
                Text("Press")
            }
            
        }
    }
}
