//
//  InsetGalleryView.swift
//  Africa
//
//  Created by Raj.P, Varun (Cognizant) on 17/07/24.
//

import SwiftUI

struct InsetGalleryView: View {
    
    let animals: [Animal] = Bundle.main.decode("animals.json")

    var body: some View {
        ScrollView(.horizontal) {
            HStack(alignment: .center, spacing: 10) {
                ForEach(animals) { animal in
                    Image(animal.image)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                    .cornerRadius(10)
                }
            }
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    return InsetGalleryView()
        .padding()
}
