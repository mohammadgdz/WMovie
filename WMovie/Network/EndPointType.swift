//
//  EndPointType.swift
//  WMovie
//
//  Created by Mohammad on 2025-06-07.
//

import Foundation

enum HTTPMethod: String {
    case get = "GET"
    case post = "POST"
    case delete = "DELETE"
}

protocol EndPointType {
    var url: URL? { get }
    var path: String { get }
    var baseURL: String { get }
    var body: Encodable? { get }
    var headers: [String: String]? { get }
    var method: HTTPMethod { get }
}

enum MovieEndPoint {
    case popular
    case topRated
    case upcoming
    case credits(movieID: Int)
    case search(name: String)
}

extension MovieEndPoint: EndPointType {
    private var apiKey: String {
        Secrets.apiKey
    }

    var url: URL? {
        switch self {
        case .search:
            URL(string: baseURL + path + "&api_key=\(apiKey)")
        default:
            URL(string: baseURL + path + "?api_key=\(apiKey)")
        }
    }

    var path: String {
        switch self {
        case .popular:
            return "popular"
        case .topRated:
            return "top_rated"
        case .upcoming:
            return "upcoming"
        case .credits(let id):
            return "\(id)" + "/credits"
        case .search(let name):
            return "query=\(name)"
        }
    }

    var baseURL: String {
        switch self {
        case .search:
            return "https://api.themoviedb.org/3/search/movie?"
        default:
            return "https://api.themoviedb.org/3/movie/"
        }
    }

    var body: Encodable? {
        nil
    }

    var headers: [String: String]? {
        ["accept": "application/json"]
    }

    var method: HTTPMethod {
        .get
    }
}
