//
//  BoardView-ViewModel.swift
//  i2ch
//
//  Created by Антон Баскаков on 20.07.2024.
//

import Foundation
import Observation


extension BoardView {
    @Observable
    class ViewModel {
        var networkManager = NetworkManager()
        
        var boardItem: BoardItem?
        func getData(board: String) async {
            do {
                boardItem = try await networkManager.downloadData(from: "https://2ch.hk/\(board)/catalog.json")
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
