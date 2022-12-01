//
//  MovieMapper.swift
//  theMealsApp
//
//  Created by Muhammad Fahmi on 01/12/22.
//

import Foundation

final class MovieMapper {
    static func movieResponseToDomain(input movieResponse: [MovieModel]) -> [MovieModel] {
        return movieResponse.map { result in
            return MovieModel(title: result.title, posterPath: result.posterPath, releaseDate: result.releaseDate)
        }
    }
}
