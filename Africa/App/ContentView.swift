//
//  ContentView.swift
//  Africa
//
//  Created by Raj.P, Varun (Cognizant) on 17/07/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isGridViewActive = false
    let animals: [Animal] = Bundle.main.decode("animals.json")
    let gridLayout = Array(repeating: GridItem(.flexible()), count: 2)

    var body: some View {
        NavigationView {
            Group {
                if !isGridViewActive {
                    List {
                        CoverImageView()
                            .frame(height: 300)
                            .listRowInsets(.init())
                        
                        ForEach(animals) { animal in
                            NavigationLink {
                                AnimalDetailView(animal: animal)
                            } label: {
                                AnimalListItemView(animal: animal)
                            }

                        }
                    }
                    .listStyle(.plain)
                } else {
                    ScrollView(.vertical) {
                        LazyVGrid(columns: gridLayout, content: {
                            ForEach(animals) { item in
                                NavigationLink {
                                    AnimalDetailView(animal: item)
                                } label: {
                                    Image(item.image)
                                        .resizable()
                                        .scaledToFit()
                                }
                            }
                        })
                        .padding(10)
                    }
                }
            }

            .navigationTitle("Africa")
            .navigationBarTitleDisplayMode(.large)
            .toolbar(content: {
                Button(action: {
                    isGridViewActive = false
                }, label: {
                    Image(systemName: "square.fill.text.grid.1x2")
                        .font(.title2)
                        .foregroundColor(isGridViewActive ? .primary : .accentColor)
                })
                
                Button(action: {
                    isGridViewActive = true
                }, label: {
                    Image(systemName: "square.grid.2x2")
                        .font(.title2)
                        .foregroundColor(isGridViewActive ? .accentColor : .primary)
                })

            })
        }
    }
}

#Preview {
    ContentView()
}
