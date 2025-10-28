//
//  ListviewDay13.swift
//  SwiftJourney
//
//  Created by HarshaHrudhay on 07/07/25.
//

import SwiftUI

struct ListviewDay5: View {
    
    @State private var shopingitems: [shoppingModelDay5] = [
        shoppingModelDay5(title: "Apple", price: 55.5),
        shoppingModelDay5(title: "Banana", price: 25.5),
        shoppingModelDay5(title: "Orange", price: 45.5),
        shoppingModelDay5(title: "Pineapple", price: 35.5),
        shoppingModelDay5(title: "Mango", price: 65.5)
    ]
    
    @State private var  toDoItems: [String] = [
        "wall cameos",
        "paper Tarts",
        "Fight Club"
    ]
    
    var body: some View {
        
        List(shopingitems) { shoppingItem in
            HStack {
                Text(shoppingItem.title)
                
                Spacer()
                Text("\(shoppingItem.price)")
            }
        }
        Spacer()
        
        
        List {
            Text("Apple Jam")
            Image(systemName: "person.fill")
            Button(action: {
                
            }, label: {
                Text("Button")
            })
            
        }
        
        Divider()
        
        List {
            ForEach(shopingitems) { shopingitem in
                Text(shopingitem.title)
            }
             
            ForEach(toDoItems, id: \.self) { todoitem in
                Text(todoitem)
            }
            
            
        }
        
        
        
    }
}

#Preview {
    ListviewDay5()
}
