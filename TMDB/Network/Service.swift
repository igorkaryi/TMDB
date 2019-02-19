//
//  Service.swift
//  TMDB
//
//  Created by Karigor on 2/19/19.
//  Copyright © 2019 IK. All rights reserved.
//

import Moya

enum Service {
    case popular(params: [String: String])
}

let v3Auth = "b7a1add927707ccdf17bda250f073186"

extension Service: TargetType {
    var baseURL: URL { return URL(string: "https://api.themoviedb.org/3")! }
    
    var path: String {
        switch self {
        case .popular:
            return "/movie/popular"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .popular:
            return .get
        }
    }
    
    var task: Task {
        switch self {
        default:
            let params = self.parameters ?? [:]
            let encoding = self.parameterEncoding
            return .requestParameters(parameters: params,
                                      encoding: encoding)
        }
    }
    
    var sampleData: Data {
        return Data()
    }
    
    var headers: [String: String]? {
        return nil
    }
    
    var parameters: [String: Any]? {
        switch self {
        case .popular(let params):
            return params
        }
    }
    
    var parameterEncoding: ParameterEncoding {
        return URLEncoding.default
    }
}
