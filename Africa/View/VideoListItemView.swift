//
//  VideoListItemView.swift
//  Africa
//
//  Created by Raj.P, Varun (Cognizant) on 18/07/24.
//

import SwiftUI

struct VideoListItemView: View {
    
    let video: VideoModel
    
    @State private var isAnimating = false
    
    var body: some View {
        HStack(alignment: .center, spacing: 10) {
            ZStack {
                Image(video.thumbnail)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 80)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 32)
                    .shadow(radius: 5)
            }
            VStack(alignment: .leading, spacing: 8) {
                Text(video.name)
                    .fontWeight(.bold)
                    .foregroundColor(.accentColor)
                Text(video.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
            }
        }
        .offset(y: isAnimating ? 0 : -20)
        .onAppear(perform: {
            withAnimation(.easeIn) {
                isAnimating = true
            }
        })
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    let videos: [VideoModel] = Bundle.main.decode("videos.json")

    return VideoListItemView(video: videos[1])
}
