//
//  VideoPlayerView.swift
//  Africa
//
//  Created by Raj.P, Varun (Cognizant) on 18/07/24.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    
    var videoSelected: String
    var videoTitle: String
    
    var body: some View {
        VStack {
            VideoPlayer(player: playVideo(fileName: videoSelected, fileFormat: "mp4"))
        }
        .accentColor(.accentColor)
        .navigationTitle(videoTitle)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    VideoPlayerView(videoSelected: "lion", videoTitle: "Lion")
}
