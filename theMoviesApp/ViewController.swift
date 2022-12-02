//
//  ViewController.swift
//  theMealsApp
//
//  Created by Muhammad Fahmi on 15/11/22.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let useCase = Injection.init().provideMovieUseCase()
        let presenter = MoviePresenter(movieUseCase: useCase)
        presenter.getMovie()
        
    }
}

