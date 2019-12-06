//
//  MarvelUrl.swift
//  CatalogMarvel
//
//  Created by Diogo Guedes on 04/12/19.
//  Copyright © 2019 Diogo Guedes. All rights reserved.
//

enum MarvelUrlType: String, Codable {
    case detail = "detail"
    case comiclink = "comiclink"
    case wiki = "wiki"
}

struct MarvelUrl: Codable {
    var type: MarvelUrlType
    var url: String
}
