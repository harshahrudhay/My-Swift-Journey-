//
//  presentingSheetDay4.swift
//  SwiftJourney
//
//  Created by HarshaHrudhay on 28/10/25.
//




import SwiftUI

struct presentingSheetDay4: View {

    @State private var showSheet = false
    @State private var showPresentationDetent = false
    //    @State var sheetColor: Color = .blue
    @State private var person: personDay4?
    @State private var fullscreensheet = false
    @State private var presentViewonNavigationStack: Bool = false
    @State private var navigationPerson: personDay4?

    var body: some View {

        NavigationStack {
            ZStack {
                //            sheetColor
                VStack(alignment: .leading) {
                    Button(
                        action: {
                            showSheet = true
                        },
                        label: {
                            Text("Take Me To Sheet with Boolean")
                                .frame(width: 380, height: 40)
                                .foregroundStyle(Color.white)
                                .background(Color.mint)
                        }
                    )
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding()

                    Divider()

                    Button(
                        action: {
                            person = personDay4(name: "Bob", weight: 60, height: 500)

                        },
                        label: {
                            Text("Take Me To Sheet with Item")
                                .frame(width: 380, height: 40)
                                .foregroundStyle(Color.white)
                                .background(Color.cyan)
                        }
                    )
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding()

                    Divider()

                    Button(
                        action: {
                            showPresentationDetent = true
                        },
                        label: {
                            Text("Take Me To Sheet with Presentation Detent")
                                .frame(width: 380, height: 40)
                                .foregroundStyle(Color.white)
                                .background(Color.gray)
                        }
                    )
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding()

                    Divider()

                    Button(
                        action: {
                            fullscreensheet = true
                        },
                        label: {
                            Text("Take Me To Sheet with Full Screen View")
                                .frame(width: 380, height: 40)
                                .foregroundStyle(Color.white)
                                .background(Color.teal)
                        })
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding()
                    
                    Divider()
                    
                    NavigationLink(destination: {                                        //5. After adding a navigation stack navigation link should be added
                        navigationViewDay4()                    }, label: {
                        Text("Navigation Title")
                    })
                    
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding()
                    
                    Divider()
                    
                    Button(action: {                                                                          // 6.2 . Navigation Destination with buttons
                        presentViewonNavigationStack = true
                    }, label: {
                        Text("Navigation Title by button using .navigationdestination")
                            .frame(width: 380, height: 60)
                            .foregroundStyle(Color.white)
                            .background(Color.purple)
                    })
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding()
                    
                    
                    Divider()
                    
                    Button(action: {                                                                          // 6.2 . Navigation Destination with buttons
                        navigationPerson = personDay4(name: "harry", weight: 60, height: 180 )
                    }, label: {
                        Text("Navigation Title by button using Item")
                            .frame(width: 380, height: 40)
                            .foregroundStyle(Color.white)
                            .background(Color.orange)
                    })
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding()
                    
                    Divider()
                    
                    NavigationLink(value: personDay4(name: "Bill", weight: 69, height: 150), label: {
                        Text("Navigation with Hashable")
                    })
                    .padding()
                    
                }

                .sheet(
                    isPresented: $showSheet,
                    content: {                                                               // 1. presenting and Dismissing
                        sheetViewday4(showsheet: $showSheet)
                    }
                )

                // below is with color modifiers

                //            .sheet(isPresented: $showSheet, onDismiss: {
                //                sheetColor = Color.pink
                //            }, content: {
                //                sheetViewday12(showsheet: $showSheet)
                //            })

                .sheet(item: $person) { person in                                                        // 2. optional
//                    sheetitemViewDay12(person: person)
                    sheetitemViewDay4(person: person)
                }

                .sheet(
                    isPresented: $showPresentationDetent,
                    content: {
                        presentationdetentViewDat4()
                            .presentationDetents([.medium, .large])                                 // 3.Presentation Detents
                        //                    .presentationDetents([.fraction(0.50)])
                        //                    .presentationDetents([.height(300)])
                    }
                )

                .fullScreenCover(
                    isPresented: $fullscreensheet,
                    content: {                                                                                   // 4.  Fullscreen
                        fullscreenviewDay4()
                    }
                )
                .navigationDestination(isPresented: $presentViewonNavigationStack, destination: {       // 6. Navigation Destination can be called in button
                    navigationViewDay4()
                })
                
                .navigationDestination(item: $navigationPerson) { person in
                    personnavigationViewDay4(person: person)
                }
                .navigationDestination(for: personDay4.self) { person in
                    personnavigationViewDay4(person: person )
                }
            }
        }

    }
}

#Preview {
    presentingSheetDay4()
}
