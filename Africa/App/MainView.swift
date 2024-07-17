//
//  MainView.swift
//  Africa
//
//  Created by Raj.P, Varun (Cognizant) on 17/07/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Text("Browse")
                    Image(systemName: "square.grid.2x2")
                }
            VideoListView()
                .tabItem {
                    Text("Watch")
                    Image(systemName: "play.rectangle")
                }
            MapView()
                .tabItem {
                    Text("Locations")
                    Image(systemName: "map")
                }
            GalleryView()
                .tabItem {
                    Text("Gallery")
                    Image(systemName: "photo")
                }
        }
    }
}

#Preview {
    MainView()
}
