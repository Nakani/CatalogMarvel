//
//  CatalogCellViewModel.swift
//  CatalogMarvel
//
//  Created by Diogo Guedes on 04/12/19.
//  Copyright © 2019 Diogo Guedes. All rights reserved.
//

import Foundation
import Alamofire

class CatalogCellViewModel {
    
    var service: MarvelService!
    var character: MarvelCharacter!
    
    var thumbnailURL: String {
        return self.character.thumbnail.urlPath(type: .portraitMedium)
    }
    
    init(service: MarvelService, character: MarvelCharacter) {
        self.service = service
        self.character = character
    }
}
