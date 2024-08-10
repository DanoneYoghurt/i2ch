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
    @State private var searchText = ""
    
    var filteredBoards: [BoardListItem] {
        if showNsfw {
            return viewModel.boards
        } else {
            return viewModel.boards.filter { $0.category != "Взрослым" && $0.category != "Разное" }
        }
    }
    
    var searchResults: [BoardListItem] {
        if searchText.isEmpty {
            return filteredBoards
        } else {
            return filteredBoards.filter { $0.name.localizedStandardContains(searchText) }
        }
    }
    
    var body: some View {
        NavigationStack {
            if !viewModel.boards.isEmpty {
                List {
                    ForEach(searchResults, id: \.name) { board in
                        NavigationLink {
                            BoardView(id: board.id)
                        } label: {
                            HStack {
                                BoardIcon(boardId: board.id)
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
                .searchable(text: $searchText)
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

struct BoardIcon: View {
    
    var boardId: String
    
    var body: some View {
        Text("/\(boardId)/")
            .font(.system(size: 15))
            .frame(width: 80)
            .fontWeight(.semibold)
            .foregroundStyle(.orange)
    }
}

#Preview {
    ContentView()
}
