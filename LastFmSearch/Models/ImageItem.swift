//
//  ImageItem.swift
//  LastFm Search
//
//  Created by Akshay Jain on 09/09/20.
//  Copyright © 2020 akshay. All rights reserved.
//

import Foundation

struct ImageItem: Decodable {
    
    let url: URL
    let size: String
    
    enum CodingKeys : String, CodingKey {
        case url = "#text"
        case size = "size"
    }
    
    init(with dictionary: [String: Any]) {
        if let url = URL(string: dictionary["#text"] as? String ?? "") {
            self.url = url
        } else {
            self.url = URL(fileURLWithPath: "")
        }
        self.size = dictionary["size"] as? String ?? ""
    }
}
