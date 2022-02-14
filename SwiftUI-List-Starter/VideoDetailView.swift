//
//  VideoDetailView.swift
//  SwiftUI-List-Starter
//
//  Created by Jaison Zachariah on 14/02/22.
//

import SwiftUI

struct VideoDetailView: View {
    var video: Video
    
    var body: some View {
        VStack(spacing: 20){
            Spacer()
            Image(video.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 150)
            Text(video.title)
                .fontWeight(.semibold)
                .padding(.horizontal).lineLimit(2)
                .multilineTextAlignment(.center)
            
            HStack(spacing: 40){
                Label("\(video.viewCount)", systemImage: "eye.fill")
                    .foregroundColor(.secondary)
                    .font(.subheadline)
                Text(video.uploadDate)
                    .foregroundColor(.secondary)
                    .font(.subheadline)
            }
            Text(video.description)
                .padding()
                .font(.body)
            Spacer()
            Link(destination: video.url){
                Text("Watch Now")
                    .bold()
                    .foregroundColor(Color.white)
                    .frame(width: 280, height: 50)
                    .background(Color.blue)
            }
        }
    }
}

struct ContentVideoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        VideoDetailView(video: VideoList.topTen.first!)
    }
}
