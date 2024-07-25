//
//  ContentView.swift
//  i2ch
//
//  Created by Антон Баскаков on 20.07.2024.
//

import SwiftUI



struct ContentView: View {
    
    @State private var viewModel = ViewModel()
    @State private var showNsfw = false
    
    var body: some View {
        NavigationStack {
            if !viewModel.boards.isEmpty {
                List {
                    ForEach(showNsfw ? viewModel.boards : viewModel.boards.filter { $0.category != "Взрослым" && $0.category != "Разное" }, id: \.name) { board in
                        NavigationLink {
                            BoardView(id: board.id)
                        } label: {
                            HStack {
                                Text("/\(board.id)/")
                                    .font(.system(size: 15))
                                    .frame(width: 80)
                                    .fontWeight(.semibold)
                                    .foregroundStyle(.orange)
                                VStack(alignment: .leading) {
                                    Text(board.name)
                                        
                                    Text(board.category)
                                        .font(.system(size: 15))
                                        .foregroundStyle(.secondary)
                                }
                                
                                Spacer()
                                
                                if board.category == "Взрослым" || board.category == "Разное" {
                                    NsfwView()
                                }
                            }
                        }
                    }
                    .navigationTitle("Boards")
                }
                .refreshable {
                    await viewModel.getData()
                }
                .toolbar {
                    Button {
                        showNsfw.toggle()
                    } label: {
                        Image(systemName: showNsfw ? "eye.slash" : "eye")
                    }
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
