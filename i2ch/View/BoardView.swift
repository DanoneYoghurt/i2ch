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
                        ScrollView(.horizontal) {
                        ForEach(thread.files ?? [], id: \.name) { file in
                                AsyncImage(url: URL(string: "https://2ch.hk\(file.path ?? "")")!) { image in
                                    image.image?
                                        .resizable()
                                        .frame(width: 200, height: 200)
                                }
                            }
                        }
                        VStack {
                            Text(thread.subject ?? "")
//                            Text(thread.comment ?? "")
                            
                        }
                    }
                }
            }
        }
        .onAppear {
            Task {
                await viewModel.getData(board: id)
            }
        }
        
    }
}

#Preview {
    BoardView(id: "b")
}
