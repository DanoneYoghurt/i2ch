//
//  NetworkManager.swift
//  i2ch
//
//  Created by Антон Баскаков on 20.07.2024.
//

import Foundation
import Observation

enum NetworkError: Error {
    case invalidUrl, invalidResponse, invalidData, unableToDecode
}

@Observable
final class NetworkManager {
    
    func downloadData<T: Codable>(from urlString: String) async throws -> T {
        let url = URL(string: urlString)!
        var request = URLRequest(url: url)
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpMethod = "GET"
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            throw NetworkError.invalidResponse }
        
        do {
            guard let result = try JSONDecoder().decode(T?.self, from: data) else {
                throw NetworkError.unableToDecode
            }
            
            return result
        } catch {
            throw NetworkError.invalidData
        }
    }
    
}
