//
//  MarvelCharacterResult.swift
//  CatalogMarvel
//
//  Created by Diogo Guedes on 04/12/19.
//  Copyright © 2019 Diogo Guedes. All rights reserved.
//


struct MarvelCharactersResult: Codable {
    var code: Int
    var status: String
    var copyright: String
    var attributionText: String
    var attributionHTML: String
    var etag: String
    var data: MarvelData
}
