//
//  MovieDataSourceProtocol.swift
//  theMealsApp
//
//  Created by Muhammad Fahmi on 30/11/22.
//

import Foundation
import Alamofire

protocol MovieDataSourceProtocol: AnyObject {
    
    func getMovieFromDataSource(result: @escaping (Result<[MovieModel], URLError>) -> Void)
    
}
