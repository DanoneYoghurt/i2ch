//
//  ContentView.swift
//  i2ch
//
//  Created by Антон Баскаков on 20.07.2024.
//

import SwiftUI



struct ContentView: View {
    
    @State private var boards: [BoardListItem]?
    
    @State private var networkManager = NetworkManager()
    @State private var viewModel = ViewModel()
    
    var body: some View {
        NavigationStack {
            if let boards = boards {
                List {
                    ForEach(boards, id: \.name) { board in
                        NavigationLink {
                            BoardView(id: board.id)
                        } label: {
                            HStack {
                                Text("/\(board.id)/")
                                    .fontWeight(.semibold)
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
                do {
                    boards = try await networkManager.downloadData(from: "https://2ch.hk/api/mobile/v2/boards")
                } catch NetworkError.invalidData {
                    print("Invalid Data")
                } catch NetworkError.invalidResponse {
                    print("Invalid Response")
                } catch NetworkError.invalidUrl {
                    print("Invalid URL")
                } catch NetworkError.unableToDecode {
                    print("Unable to decode data")
                } catch {
                    print("General Error")
                }
                
            }
        }
    }
    

}

#Preview {
    ContentView()
}
