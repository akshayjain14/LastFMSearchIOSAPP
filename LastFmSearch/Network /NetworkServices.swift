//
//  NetworkServices.swift
//  LastFm Search
//
//  Created by Akshay Jain on 09/09/20.
//  Copyright © 2020 akshay. All rights reserved.
//

import Alamofire

struct ParameterKeys {
    static let methodKey = "method"
    static let api_keyKey = "api_key"
    static let formatKey = "format"
    static let limitKey = "limit"
    static let pageKey = "page"
    static let albumKey = "album"
    static let artistKey = "artist"
    static let songKey = "track"
    static let autocorrectKey = "autocorrect"
    static let mbidKey = "mbid"
}

struct ParameterValues {
    static let apiKey = "5ab5ecf2f9f13077b0419e2d7330261c"
    static let responseFormat = "json"
    static let itemsPerPage = "20"
    static let autocorrect = "1"
    static let albumSearchMethod = "album.search"
    static let albumGetinfoMethod = "album.getinfo"
    static let artistSearchMethod = "artist.search"
    static let artistGetinfoMethod = "artist.getinfo"
    static let songSearchMethod = "track.search"
    static let songGetinfoMethod = "track.getinfo"
}

class NetworkServices {
    
    static let rootURL = "https://ws.audioscrobbler.com/2.0/"
    
    static let shared = NetworkServices()
    
    func fetchMediaDetails(with parameters: Parameters,
                           completionHandler: @escaping ([String: Any]?, Error?) -> Void) -> DataRequest
    {
    
       return AF.request(type(of: self).rootURL, parameters: parameters).responseJSON { (response) in
        if let jsonResponse = response.value {
                
            completionHandler(jsonResponse as? [String : Any], nil)
            } else {
                completionHandler(nil, response.error)
            }

        }
        
    }
    
}
