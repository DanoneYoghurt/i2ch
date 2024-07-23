//
//  ThreadView.swift
//  i2ch
//
//  Created by Антон Баскаков on 22.07.2024.
//

import SwiftUI

struct ThreadView: View {
    
    @State private var viewModel = ViewModel()
    
    var board: String
    var num: String
    
    var body: some View {
        
             List {
                ForEach(viewModel.threadItem?.threads ?? [], id: \.posts) { posts in
                    
                        ForEach(posts.posts ?? [], id: \.date) { post in
                            
                            // знатный костыль по отображению комментов, позже буду исправлять
                            WebView(text: post.comment ?? "")
                        }
                    
                }
            }
        
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
