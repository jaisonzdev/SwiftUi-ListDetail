//
//  ContentView.swift
//  SwiftUI-List-Starter
//
//  Created by Sean Allen on 4/23/21.
//

import SwiftUI

struct VideoListView: View {
    var body: some View {
        let videos: [Video] = VideoList.topTen
        // Figure out the space between image and the border
        NavigationView{
            List(videos,id: \.id) { video in
                NavigationLink(destination: VideoDetailView(video:video)){
                    VideoCell(video: video)
                }
            }.navigationTitle("My Videos")
        }
    }
}

struct VideoCell: View {
    var video: Video
    
    var body: some View {
        HStack{
            Image(video.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 70)
                .cornerRadius(4)
                .padding(.vertical, 4)
            VStack(alignment: .leading, spacing: 5){
                Text(video.title)
                    .fontWeight(.semibold)
                    .lineLimit(2)
                    .minimumScaleFactor(0.5)
                Text(video.uploadDate)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
