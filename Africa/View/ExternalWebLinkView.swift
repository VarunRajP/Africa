//
//  ExternalWebLinkView.swift
//  Africa
//
//  Created by Raj.P, Varun (Cognizant) on 18/07/24.
//

import SwiftUI

struct ExternalWebLinkView: View {
    
    let animal: Animal
    
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                
                Spacer()
                
                Group {
                    HStack {
                        Image(systemName: "arrow.up.right.square")
                        Link("\(animal.name)", destination: URL(string: animal.link)!)
                    }
                }
                .foregroundColor(.accentColor)
            }
        }
    }
}

#Preview {
    let animals: [Animal] = Bundle.main.decode("animals.json")

    return ExternalWebLinkView(animal: animals[1])
}
