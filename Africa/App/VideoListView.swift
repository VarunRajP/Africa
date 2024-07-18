//
//  VideoListView.swift
//  Africa
//
//  Created by Raj.P, Varun (Cognizant) on 17/07/24.
//

import SwiftUI

struct VideoListView: View {
    
    let videos: [VideoModel] = Bundle.main.decode("videos.json")
    
    var body: some View {
        NavigationView {
            List {
                ForEach(videos) { item in
                    NavigationLink(destination: {
                        VideoPlayerView(videoSelected: item.id, videoTitle: item.name)
                    }, label: {
                        VideoListItemView(video: item)
                    })
                }
            }
            .listStyle(.plain)
            
            .navigationTitle("Videos")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    VideoListView()
}
