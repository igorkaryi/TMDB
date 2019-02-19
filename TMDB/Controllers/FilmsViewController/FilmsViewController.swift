//
//  ViewController.swift
//  TMDB
//
//  Created by Karigor on 2/19/19.
//  Copyright © 2019 IK. All rights reserved.
//

import UIKit
import Moya
import Moya_ObjectMapper

class FilmsViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    let columnLayout = ColumnFlowLayout(
        cellsPerRow: 2,
        minimumInteritemSpacing: 10,
        minimumLineSpacing: 10,
        sectionInset: UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    )
    
    let provider = MoyaProvider<Service>()
    
    var filmsArray = Results()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        getPopularFilmsWithPage(page: "10")
    }
    
    func getPopularFilmsWithPage(page: String) {
        provider.request(.popular(params: ["api_key": "b7a1add927707ccdf17bda250f073186", "page": page])) { result in
            switch result {
            case .success(let response):
                let results = try? response.mapObject(Films.self)
                guard let films = results?.results else { return }
                print(films)
                
            case .failure(let error):
                print(error.errorDescription ?? "Unknown error")
            }
        }
    }

}


