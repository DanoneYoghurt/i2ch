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
                        VStack {
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
                                            ThumbnailImageView(thumbnailPath: file.thumbnail, fullsizePath: file.path)
                                        }
                                    }
                                }
                                
                                Divider()
                            } else {
                                Divider()
                            }
                            if let comment = post.comment {
                                RichText(html: comment)
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
        }
        .refreshable {
            await viewModel.getData(board: board, num: num)
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
