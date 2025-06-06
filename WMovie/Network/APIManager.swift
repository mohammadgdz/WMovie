//
//  APIManager.swift
//  WMovie
//
//  Created by Mohammad on 2025-06-07.
//

import Foundation

enum NetworkError: Error {
    case invalidURL
    case invalidResponse
    case invalidError
    case networkError(_ error: Error?)
    
    /// TMDB Errors here : https://developer.themoviedb.org/docs/errors
}

final class APIManager {
    
    func request<T: Decodable>(type: EndPointType) async throws -> T {
        
        guard let url = type.url else { throw NetworkError.invalidURL }
        
        var request = URLRequest(url: url)
        request.httpMethod = type.method.rawValue
        
        if let body = type.body {
            request.httpBody = try? JSONEncoder().encode(body)
        }

        request.allHTTPHeaderFields = type.headers
        let (data, response) = try await URLSession.shared.data(for: request)

        guard (response as? HTTPURLResponse)?.statusCode == 200 else {
            throw NetworkError.invalidResponse
        }
        
        return try JSONDecoder().decode(T.self, from: data)
        
    }
    
}
