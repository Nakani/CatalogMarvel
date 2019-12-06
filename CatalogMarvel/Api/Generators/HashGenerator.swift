//
//  HashGenerator.swift
//  CatalogMarvel
//
//  Created by Diogo Guedes on 04/12/19.
//  Copyright © 2019 Diogo Guedes. All rights reserved.
//

import Foundation
struct HashGenerator {
    
    static func hash(ts: String, privateKey: String, publicKey: String) -> String {
        return "\(ts)\(privateKey)\(publicKey)".md5()
    }
    
}
