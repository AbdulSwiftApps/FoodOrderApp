//
//  NetworkManager.swift
//  FoodOrderApp
//
//  Created by Abdul Hassan on 5/28/24.
//

import Foundation

final class NetworkManager {
    static let shared = NetworkManager()
    
    static let baseUrl = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/"
    private let appetizerUrl = baseUrl + "appetizers"
    
    private init() {
        
    }
    
    func getAppetizer(completed: @escaping (Result<[Appetizer], APError>) -> Void) {
        guard let url = URL(string: appetizerUrl) else {
            completed(.failure(.invalidUrl))
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let error = error else {
                completed(.failure(.unableToComplete))
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(.failure(.invalidResponse))
            }
            
            guard let data = data else {
                completed(.failure(.invalidData))
            }
            
            do {
                let decoder = JSONDecoder()
                let decodedResponse = try decoder.decode(AppetizerResponse.self, from: data)
                completed(.success(decodedResponse.request))
            } catch {
                completed(.failure(.invalidData))
            }
        }
        
        task.resume()
    }
}
