//
//  Comics.swift
//  CatalogMarvel
//
//  Created by Diogo Guedes on 04/12/19.
//  Copyright © 2019 Diogo Guedes. All rights reserved.
//

struct Comics: Codable {
    var available: Int
    var collectionURI: String
    var items: [Resource]
    var returned: Int
}
