//
//  BoardView.swift
//  i2ch
//
//  Created by Антон Баскаков on 20.07.2024.
//

import SwiftUI

struct BoardView: View {
    var id: String
    
    @State private var viewModel = ViewModel()
    
    
    var body: some View {
        VStack {
            if let boardItem = viewModel.boardItem {
                List {
                    ForEach(boardItem.threads ?? [], id: \.comment) { thread in
                        NavigationLink {
                            ThreadView(board: thread.board ?? "au", num: String(thread.num ?? 42375))
                        } label: {
                            HStack {
                                ScrollView(.horizontal) {
                                    HStack {
                                        ForEach(thread.files ?? [], id: \.name) { file in
                                            ThumbnailImageView(thumbnailPath: file.thumbnail, fullsizePath: file.path)
                                        }
                                    }
                                    .scrollTargetLayout()
                                }
                                .scrollTargetBehavior(.viewAligned)
                                .frame(width: 105, height: 105)
                                VStack(alignment: .leading) {
                                    HStack {
                                        Text(String(thread.num ?? 0))
                                            .foregroundStyle(.orange)
                                        Text(thread.name ?? "Loading")
                                        Text(thread.email ?? "Loading")
                                    }
                                    .font(.system(size: 15))
                                    Spacer()
                                    Text(thread.subject ?? "Loading")
                                    Spacer()
                                }
                                .padding(.vertical, 10)
                            }
                        }
                    }
                }
                .refreshable {
                    await viewModel.getData(board: id)
                }
            } else {
                ProgressView()
            }
        }
        .onAppear {
            Task {
                await viewModel.getData(board: id)
            }
        }
        .navigationTitle(viewModel.boardItem?.board?.name ?? "Loading")
        .navigationBarTitleDisplayMode(.inline)
        
        
    }
}

#Preview {
    BoardView(id: "au")
}
