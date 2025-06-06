//
//  MovieModel.swift
//  WMovie
//
//  Created by Mohammad on 2025-06-07.
//

import Foundation

struct MovieResponseModel: Decodable {
    let results: [Movie]
}

struct Movie: Decodable, Identifiable, Hashable {
    let id: Int
    let originalTitle: String
    let overview: String
    let posterPath: String?
    let releaseDate: String
    let title: String
    let backdropPath: String?
    let popularity: Double
    let voteAverage: Double
    let voteCount: Int

    enum CodingKeys: String, CodingKey {
        case id
        case originalTitle = "original_title"
        case overview
        case posterPath = "poster_path"
        case popularity
        case releaseDate = "release_date"
        case title
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
        case backdropPath = "backdrop_path"
    }
}

extension Movie {
    static var dummy: Movie {
        .init(id: 693134,
              originalTitle: "Fight Club",
              overview: "A ticking-time-bomb insomniac and a slippery soap salesman channel primal male aggression into a shocking new form of therapy. Their concept catches on, with underground \"fight clubs\" forming in every town, until an eccentric gets in the way and ignites an out-of-control spiral toward oblivion.",
              posterPath: "/pB8BM7pdSp6B6Ih7QZ4DrQ3PmJK.jpg",
              releaseDate: "1999-10-15",
              title: "Fight Club",
              backdropPath: "/hZkgoQYus5vegHoetLkCJzb17zJ.jpg",
              popularity: 4661.985,
              voteAverage: 8.433,
              voteCount: 26288)
    }
}
