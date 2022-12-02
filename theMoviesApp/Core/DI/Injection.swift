//
//  Injection.swift
//  theMoviesApp
//
//  Created by Muhammad Fahmi on 02/12/22.
//

import Foundation

class Injection {
    
    private func provideMovieRepository() -> MovieRepository {

        let movieRemote: MovieDataSource = MovieDataSource.movieDataSourceInstance

        return MovieRepository.sharedMovieInstance(movieRemote)
    }
    
    func provideMovieUseCase() -> MovieUseCase {
        let movieRepo = provideMovieRepository()
        return MovieInteractor(movieRepo: movieRepo)
    }
    
}
