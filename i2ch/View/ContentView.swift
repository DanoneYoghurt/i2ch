//
//  ContentView.swift
//  i2ch
//
//  Created by Антон Баскаков on 20.07.2024.
//

import SwiftUI



struct ContentView: View {

    @State private var viewModel = ViewModel()
    
    var body: some View {
        NavigationStack {
            if !viewModel.boards.isEmpty {
                List {
                    ForEach(viewModel.boards, id: \.name) { board in
                        NavigationLink {
                            BoardView(id: board.id)
                        } label: {
                            HStack {
                                Text("/\(board.id)/")
                                    .fontWeight(.semibold)
                                    .foregroundStyle(.orange)
                                Text(board.name)
                                
                                Spacer()
                                
                                if board.category == "Взрослым" || board.category == "Разное" {
                                    NsfwView()
                                }
                            }
                        }
                    }
                    .navigationTitle("Boards")
                }
            } else {
                ProgressView()
            }
        }
        
        .onAppear {
            Task {
                await viewModel.getData()
            }
        }
    }
}

#Preview {
    ContentView()
}
