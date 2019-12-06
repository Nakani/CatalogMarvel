//
//  HashGeneratorTest.swift
//  CatalogMarvelTests
//
//  Created by Diogo Guedes on 05/12/19.
//  Copyright © 2019 Diogo Guedes. All rights reserved.
//

import XCTest
@testable import CatalogMarvel
class HashGeneratorTest: XCTestCase {
    
    let publicKey = "fake_public_key"
    let privateKey = "fake_private_key"
    let ts = "1573178292224.2952"
    
    func testShouldGenerateHash() {
        let hash = HashGenerator.hash(ts: ts, privateKey: privateKey, publicKey: publicKey)
        XCTAssertEqual(hash, "7c9baf7077f704a30ecee0b52623de0d")
    }
    
    
}
