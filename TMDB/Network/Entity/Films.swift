//
//  Films.swift
//  TMDB
//
//  Created by Karigor on 2/19/19.
//  Copyright © 2019 IK. All rights reserved.
//

import ObjectMapper

struct Films {
    var page: Int?
    var results: [Results]?
    var total_results: Int?
    var total_pages: Int?
}

extension Films: Mappable {
    init?(map _: Map) {}
    
    mutating func mapping(map: Map) {
        page <- map["page"]
        results <- map["results"]
        total_results <- map["total_results"]
        total_pages <- map["total_pages"]
    }
}
