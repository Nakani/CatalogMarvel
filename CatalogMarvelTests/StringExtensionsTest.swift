//
//  StringExtensionsTest.swift
//  CatalogMarvelTests
//
//  Created by Diogo Guedes on 05/12/19.
//  Copyright © 2019 Diogo Guedes. All rights reserved.
//

import XCTest
@testable import CatalogMarvel

class StringExtensionsTest: XCTestCase {

    func testShouldGenerateMD5() {
        let phrase = "Game of Thrones deserve a better ending"
        let expectedMD5 = "72f223831ae66b6277b9010c85d5fe70"
        XCTAssertEqual(phrase.md5(), expectedMD5)
    }
}

