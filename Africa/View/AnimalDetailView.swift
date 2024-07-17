//
//  AnimalDetailView.swift
//  Africa
//
//  Created by Raj.P, Varun (Cognizant) on 17/07/24.
//

import SwiftUI

struct AnimalDetailView: View {
    
    let animal: Animal
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                
                Text(animal.name)
                    .font(.title)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.primary)
                    .padding(.vertical, 8)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y:24))
                
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal)
                    .foregroundColor(.accentColor)
                
                Group {
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingTitle: "Wilderness in Pictures")
                    
                    InsetGalleryView()
                }
                .padding(.horizontal)
            }
        }
        .navigationBarTitle("Learn about \(animal.name)", displayMode: .inline)
    }
}

#Preview {
    let animals: [Animal] = Bundle.main.decode("animals.json")
    
    return AnimalDetailView(animal: animals[1])
}
