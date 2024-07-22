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
                    ForEach(boardItem.threads ?? [], id: \.date) { thread in
                        NavigationLink {
                            ThreadView()
                        } label: {
                            HStack {
                                ScrollView(.horizontal) {
                                    HStack {
                                        ForEach(thread.files ?? [], id: \.name) { file in
                                            AsyncImage(url: URL(string: "https://2ch.hk\(file.thumbnail ?? "")")!) { image in
                                                image
                                                    .image?
                                                    .resizable()
                                                    .scaledToFill()
                                                    .frame(width: 100, height: 100)
                                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                                            }
                                        }
                                    }
                                }
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
