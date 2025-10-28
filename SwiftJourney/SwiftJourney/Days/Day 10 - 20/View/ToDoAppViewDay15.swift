//
//  ToDoApp.swift
//  SwiftJourney
//
//  Created by HarshaHrudhay on 22/07/25.
//

import SwiftUI

struct ToDoAppViewDay15: View {
    
    @State var showAddToDoView: Bool = false
    @State var toDoLists: [taskModel] = [ ]
    @State var newpriority: ToDoPriority
    
    var body: some View {
        
        NavigationStack{
                
                
                    
                    VStack{
                        
                        if toDoLists.isEmpty {
                            Spacer()
                            
                            Text("Add new tasks")
                            
                        } else {
                        
                        List{
                            ForEach(toDoLists.indices, id: \.self) { todoList in
                                
                                // can bind $foreacxh todolist with open bracket todolist
                                         
                                Button(action: {
                                    
                                    
                                    toDoLists[todoList].isDone.toggle()
                                    
                                    
//                                    if let taskIndex = toDoLists.firstIndex(where: {$0.id == todoList.id }) {
//                                        toDoLists[taskIndex] = taskModel(title: todoList.title, priority: todoList.priority, isDone: !todoList.isDone)
//                                    }
                                    
                                    
                                                                         
                                }, label: {
                                      
                                    HStack{
                                        Image(systemName: toDoLists[todoList].isDone ? "checkmark.circle.fill" : "circle")
                                            .font(.system(size: 18))
                                            .foregroundStyle(toDoLists[todoList].isDone ? Color.green : Color.blue)
                                        
                                        Text(toDoLists[todoList].title)
                                            .foregroundStyle(toDoLists[todoList].isDone ? Color.green : Color.blue)
                                        
                                        Spacer()
//                                        
                                        Text(toDoLists[todoList].priority.title)
                                            .font(.system(size: 15, weight: .semibold))
                                            .padding(.horizontal, 12)
                                            .padding(.vertical, 5)
                                            .foregroundStyle(toDoLists[todoList].priority.color)
                                            .background(Capsule()
                                                .fill(toDoLists[todoList].priority.color.opacity(0.4)))
//                                        
                                    }
                                    
                                    
                                    
                                    
                                })
                                
                            }
                            .onDelete { Indexset in
                                toDoLists.remove(atOffsets: Indexset)
                            }
                            
                        }
                        
                    }
                        Spacer()
                    
                    Button(action: {
                        
                        
                        showAddToDoView = true
                        
                    }, label: {
                        Text("Create New Task")
                            .foregroundStyle(Color.white)
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .background(Color.green)
                            .clipShape(RoundedRectangle(cornerRadius: 30))
                            .padding()
                        
                    })
                        
                        
                        
                    .navigationTitle("To-Do List")
                    .sheet(isPresented: $showAddToDoView) {
                        AddTaskView(tasks: $toDoLists, selectedPriorityNew: $newpriority)
                    }
                }
                
        }
        
    }
}

#Preview {
    ToDoAppViewDay15( newpriority: ToDoPriority.high)
}
