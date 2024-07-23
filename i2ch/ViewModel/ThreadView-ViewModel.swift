//
//  ThreadView-ViewModel.swift
//  i2ch
//
//  Created by Антон Баскаков on 22.07.2024.
//

import Foundation
import Observation


extension ThreadView {
    @Observable
    class ViewModel {
        var networkManager = NetworkManager()
        
        var threadItem: ThreadItem?
        func getData(board: String, num: String) async {
            do {
                threadItem = try await networkManager.downloadData(from: "https://2ch.hk/\(board)/res/\(num).json")
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
