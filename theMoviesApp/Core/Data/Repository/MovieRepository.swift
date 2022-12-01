//
//  MovieRepository.swift
//  theMealsApp
//
//  Created by Muhammad Fahmi on 01/12/22.
//

import Foundation

protocol MovieRepositoryProtocol {
    
    func getMovies(result: @escaping (Result<[MovieModel], Error>) -> Void)
    
}

final class MovieRepository {
    
    typealias MovieInstance = (MovieDataSource) -> MovieRepository
    
    fileprivate let movieRemote: MovieDataSource
    
    private init(movieRemote: MovieDataSource) {
        self.movieRemote = movieRemote
    }
    
}

extension MovieRepository: MovieRepositoryProtocol {
    
    func getMovies(result: @escaping (Result<[MovieModel], Error>) -> Void) {
        self.movieRemote.getMovieFromDataSource(result: { response in
            switch response {
            case .success(let movieResponse):
                let movies = MovieMapper.movieResponseToDomain(input: movieResponse)
                result(.success(movies))
            case .failure(let error):
                result(.failure(error))
            }
        })
    }
    
}
