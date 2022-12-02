//
//  MovieInteractor.swift
//  theMoviesApp
//
//  Created by Muhammad Fahmi on 02/12/22.
//

import Foundation

protocol MovieUseCase {
    
    func getMovie(completion: @escaping (Result<[MovieModel], Error>) -> Void)
    
}

class MovieInteractor: MovieUseCase {
    
    private let movieRepo: MovieRepositoryProtocol
    
    required init(movieRepo: MovieRepositoryProtocol) {
        self.movieRepo = movieRepo
    }
    
    func getMovie(completion: @escaping (Result<[MovieModel], Error>) -> Void) {
        movieRepo.getMovies { result in
            completion(result)
        }
    }
    
}
