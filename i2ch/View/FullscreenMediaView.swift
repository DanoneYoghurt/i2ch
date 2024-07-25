//
//  FullscreenMediaView.swift
//  i2ch
//
//  Created by Антон Баскаков on 25.07.2024.
//

import SwiftUI
import AVKit

struct FullscreenMediaView: View {
    
    @Environment(\.dismiss) var dismiss
    
    @State private var currentZoom = 0.0
    @State private var totalZoom = 1.0
    
    var mediaUrl: String
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            if mediaUrl.hasSuffix(".mp4") {
                VideoPlayer(player: AVPlayer(url: URL(string: "https://2ch.hk\(mediaUrl)")!))
            } else if mediaUrl.hasSuffix(".jpg") || mediaUrl.hasSuffix(".jpeg") || mediaUrl.hasSuffix(".png") || mediaUrl.hasSuffix(".webp") || mediaUrl.hasSuffix(".gif") {
                AsyncImage(url: URL(string: "https://2ch.hk\(mediaUrl)")) { image in
                    image
                        .image?
                        .resizable()
                        .scaledToFit()
                }
                .scaleEffect(currentZoom + totalZoom)
                .gesture(
                    MagnifyGesture()
                        .onChanged { value in
                            currentZoom = value.magnification - 1
                        }
                        .onEnded { value in
                            totalZoom += currentZoom
                            currentZoom = 0
                        }
                )
                .accessibilityZoomAction { action in
                    if action.direction == .zoomIn {
                        totalZoom += 1
                    } else {
                        totalZoom -= 1
                    }
                }
            } else {
                VStack {
                    Image(systemName: "xmark")
                        .font(.largeTitle)
                        .padding()
                    Text("This media format is not supported yet")
                }
                .foregroundStyle(.white)
            }
            
            
            
            
            
        }
        
    }
}

#Preview {
    FullscreenMediaView(mediaUrl: "/abu/src/52084/17188301797610.jpg")
}
