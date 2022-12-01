//
//  MovieDataSource.swift
//  theMealsApp
//
//  Created by Muhammad Fahmi on 30/11/22.
//

import Foundation
import Alamofire

final class MovieDataSource: NSObject {
    
    private override init() {}
    
    static let movieDataSourceInstance: MovieDataSource = MovieDataSource()
    
}

extension MovieDataSource: MovieDataSourceProtocol {
    
    func getMovieFromDataSource(result: @escaping (Result<[MovieModel], URLError>) -> Void) {
        guard let url = URL(string: API.baseUrl+"movie/popular") else { return }
        
        AF.request(url, method: .get, parameters: ["api_key": API.apiKey]).validate().responseDecodable(of: MovieResponse.self) { response in
            switch response.result {
            case .success(let value):
                result(.success(value.movies))
                print(value.movies)
            case .failure:
                result(.failure(.invalidResponse))
            }
        }
        
    }
    
}
