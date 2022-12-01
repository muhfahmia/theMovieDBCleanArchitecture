//
//  MovieModel.swift
//  theMealsApp
//
//  Created by Muhammad Fahmi on 30/11/22.
//

import Foundation

struct MovieModel: Codable {
    let title: String?
    let posterPath: String?
    let releaseDate: String?
    
    enum CodingKeys: String, CodingKey {
        case title
        case posterPath = "poster_path"
        case releaseDate = "release_date"
    }
    
}


struct MovieResponse: Codable {
    let page: Int?
    let movies: [MovieModel]
    
    enum CodingKeys: String, CodingKey {
        case page
        case movies = "results"
    }
    
}
