//
//  AddTaskView.swift
//  SwiftJourney
//
//  Created by HarshaHrudhay on 22/07/25.
//

import SwiftUI

struct AddTaskView: View {
    
    @State var newTaskName: String = ""
    @Binding var tasks: [taskModel]
    @State private var selectedPriority: ToDoPriority = .high
    @Binding var selectedPriorityNew: ToDoPriority
    @Environment(\.dismiss) var dismiss
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    
    var body: some View {
        
        VStack(alignment: .leading){
            
            if horizontalSizeClass == .regular && verticalSizeClass == .compact || horizontalSizeClass == .compact && verticalSizeClass == .compact {
                
                HStack{
                    Spacer()
                    Button {
                        
                        dismiss()
                        
                    } label: {
                        Image(systemName: "xmark")
                            .font(.system(size: 20, weight: .semibold))
                            .foregroundStyle(.black)
                    }
                    
                }
                .padding(.top)
                
            }
            
            if UIDevice.isIPad {
                Spacer()
            }
          
            
            
            Text("Text Title")
//                .font(.title)
//                .fontWeight(.semibold)
                .if(UIDevice.isIPad) { View in
                    View.font(.system(size: 25, weight: .semibold))
//                    View.foregroundStyle(Color.green)
                }
                .if(UIDevice.isIPhone) { View in
                    View.font(.system(size: 20, weight: .semibold))
//                    View.foregroundStyle(Color.blue)
                }
            
            
            TextField("Task Name", text: $newTaskName)
                .textFieldStyle(.roundedBorder)
            
            Text("Priority")
                .font(.title)
                .fontWeight(.semibold)
            
            Picker("Priority", selection: $selectedPriority) {
                
                ForEach(ToDoPriority.allCases) { priority in
                    
                    Text(priority.title)
                        .tag(priority)
                    
                }
                
            }
            .pickerStyle(.palette)
            
            
           Button(action: {
//               
//               let newTask = taskModel(title: newTaskName, priority: selectedPriority, isDone: false)
//               tasks.append(newTask)
//               
               
               if !newTaskName.isEmpty {
                   tasks.append(taskModel(title: newTaskName, priority: selectedPriority, isDone: false))
               }
               
               
//               let newItem = taskModel(title: taskName, priority: selectedPriority)
               
               dismiss()
           }, label: {
               Text("Add Task")
                   .foregroundStyle(Color.white)
                   .frame(maxWidth: .
                          
                          infinity)
                   .frame(height: 35)
                   .background(Color.green)
                   .clipShape(RoundedRectangle(cornerRadius: 30))
                   .padding(.vertical)
                   
           })
            
            if UIDevice.isIPad {
                Spacer()
            }
            
            
        }
        .padding()
        .padding(.top)
        Spacer()
        
    }
}


//
//#Preview {
//    AddTaskView(tasks: .constant([]))
//        .preferredColorScheme(.light)
//}
