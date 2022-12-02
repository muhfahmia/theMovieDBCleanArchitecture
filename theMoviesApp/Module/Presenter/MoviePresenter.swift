//
//  MoviePresenter.swift
//  theMoviesApp
//
//  Created by Muhammad Fahmi on 02/12/22.
//

import Foundation

class MoviePresenter {
    
    private let movieUseCase: MovieUseCase
    
    init(movieUseCase: MovieUseCase) {
        self.movieUseCase = movieUseCase
    }
    
    func getMovie() {
        movieUseCase.getMovie { result in
            switch result {
            case .success(let movieResult):
                print(movieResult)
            case .failure(let error):
                print(error)
            }
        }
    }
}
