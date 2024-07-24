//
//  ThreadView.swift
//  i2ch
//
//  Created by Антон Баскаков on 22.07.2024.
//

import SwiftUI
import RichText

struct ThreadView: View {
    
    @State private var viewModel = ViewModel()
    
    var board: String
    var num: String
    
    var body: some View {
        
        List {
            ForEach(viewModel.threadItem?.threads ?? [], id: \.posts) { posts in
                
                ForEach(posts.posts ?? [], id: \.date) { post in
                    Section {
                        LazyVStack {
                            HStack {
                                Text(String(post.num ?? 0))
                                    .foregroundStyle(.orange)
                                
                                Spacer()
                                
                                Text(post.date ?? "Loading")
                                    .font(.footnote)
                                
                                Spacer()
                                
                                Text(post.name ?? "Loading")
                            }
                            
                            if let files = post.files {
                                Divider()
                                
                                ScrollView(.horizontal) {
                                    HStack {
                                        ForEach(files, id: \.name) { file in
                                            ThumbnailImageView(thumbnailPath: file.thumbnail)
                                        }
                                    }
                                }
                                
                                Divider()
                            } else {
                                Divider()
                            }
                            
                            RichText(html: post.comment ?? "Loading")
                                .linkColor(light: Color.orange, dark: Color.orange)
                                .placeholder {
                                    ProgressView()
                                        .padding(.vertical, 10)
                                }
                        }
                    }
                }
            }
        }
        .navigationTitle(viewModel.threadItem?.title ?? "")
        
        .onAppear {
            Task {
                await viewModel.getData(board: board, num: num)
            }
        }
    }
    
}

#Preview {
    ThreadView(board: "abu", num: "42375")
}
