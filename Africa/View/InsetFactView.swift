//
//  InsetFactView.swift
//  Africa
//
//  Created by Raj.P, Varun (Cognizant) on 17/07/24.
//

import SwiftUI

struct InsetFactView: View {
    
    let animal: Animal
    
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            }
            .tabViewStyle(PageTabViewStyle())
        .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        }
    }
}

#Preview {
    let animals: [Animal] = Bundle.main.decode("animals.json")
    
    return InsetFactView(animal: animals[1])
}
