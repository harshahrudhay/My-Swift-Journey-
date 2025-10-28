//
//  BasicGrid.swift
//  SwiftJourney
//
//  Created by HarshaHrudhay on 30/08/25.
//

import SwiftUI

struct BasicGridDay41: View {
    var body: some View {
        VStack{
            
            Grid(horizontalSpacing: 3, verticalSpacing: 20) {  //alignment: .leading ,
                GridRow(alignment: .top){
                    Color.red
                        .frame(width: 50, height: 50)
                    Color.gray
                        .frame(height: 50)
                    Color.green
                    
                }
                
                GridRow{
                    Color.red
                        .frame(height: 50)
                    Color.purple
                        .frame(height: 90)
                    Color.yellow
                        .frame(width: 50, height: 50)

                }
                
                GridRow{
                    Color.red
                    Color.purple
                    Color.blue
                    Color.pink
                }

                
                
                //                GridRow{
                //                    Text("Ant")
                //                    Text("Cat")
                //                }
                //                GridRow{
                //                    Text("Ant")
                //                    Text("Cat")
                //                    Text("Lion")
                //                    Text("Dog")
                //                }
            }
            
        }
    }
}

#Preview {
    BasicGridDay41()
}
