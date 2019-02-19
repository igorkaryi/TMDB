//
//  Results.swift
//  TMDB
//
//  Created by Karigor on 2/19/19.
//  Copyright © 2019 IK. All rights reserved.
//


import ObjectMapper

struct Results {
    var poster_path: String?
    var adult: Bool?
    var overview: String?
    var release_date: String?
    var genre_ids: [Int]?
    var id: Int?
    var original_title: String?
    var original_language: String?
    var title: String?
    var backdrop_path: String?
    var popularity: Int?
    var vote_count: Int?
    var video: Bool?
    var vote_average: Int?
}

extension Results: Mappable {
    
    init?(map: Map) {}
    
    // Mappable
    mutating func mapping(map: Map) {
        poster_path <- map["poster_path"]
        adult <- map["adult"]
        overview <- map["overview"]
        release_date <- map["release_date"]
        genre_ids <- map["genre_ids"]
        id <- map["id"]
        original_title <- map["original_title"]
        original_language <- map["original_language"]
        title <- map["title"]
        backdrop_path <- map["backdrop_path"]
        popularity <- map["popularity"]
        vote_count <- map["vote_count"]
        video <- map["video"]
        vote_average <- map["vote_average"]
    }
}
