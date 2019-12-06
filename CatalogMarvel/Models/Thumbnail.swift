//
//  Thumbnail.swift
//  CatalogMarvel
//
//  Created by Diogo Guedes on 04/12/19.
//  Copyright © 2019 Diogo Guedes. All rights reserved.
//

import UIKit

struct Thumbnail: Codable {
    
    var path: String
    var `extension`: String
    
    func urlPath(type: ThumbnailType)-> String {
        return "\(path)/\(type.rawValue).\(`extension`)"
    }
}

