//
//  GalleryView.swift
//  Africa
//
//  Created by Raj.P, Varun (Cognizant) on 17/07/24.
//

import SwiftUI

struct GalleryView: View {
    
    @State private var selectedAnimal = "lion"
    
    let animals: [Animal] = Bundle.main.decode("animals.json")
    let gridLayout = Array(repeating: GridItem(.flexible()), count: Int.random(in: 2...4))
    
    var body: some View {
        ScrollView(.vertical) {
            VStack(alignment: .center, spacing: 10) {
                Image(selectedAnimal)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay {
                        Circle()
                            .stroke(lineWidth: 8)
                    }
                
                LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10, pinnedViews: [], content: {
                    ForEach(animals) { item in
                        Image(item.image)
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .overlay {
                                Circle()
                                    .stroke(lineWidth: 1.0)
                            }
                            .onTapGesture {
                                selectedAnimal = item.image
                            }
                    }
                })
                .padding(.horizontal, 10)
                .padding(.vertical, 50)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(MotionAnimationView())
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    GalleryView()
}
