//
//  ContentView-ViewModel.swift
//  i2ch
//
//  Created by Антон Баскаков on 20.07.2024.
//

import Foundation
import Observation


extension ContentView {
    @Observable
    class ViewModel {
        var networkManager = NetworkManager()
        
        var boards = [BoardListItem]()
        
        func getData() async {
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
