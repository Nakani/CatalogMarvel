//
//  ThumbnailTest.swift
//  CatalogMarvelTests
//
//  Created by Diogo Guedes on 05/12/19.
//  Copyright © 2019 Diogo Guedes. All rights reserved.
//

import XCTest
@testable import CatalogMarvel

class ThumbnailTest: XCTestCase {
    
    var thumbnail: Thumbnail!
    let path = "http://fakeimage.com/etc"
    let ext = "png"
    
    override func setUp() {
        self.thumbnail = Thumbnail(path: self.path, extension: self.ext)
    }
    
    func testShouldReturnUrlPath() {
        let type: ThumbnailType = .detail
        let urlPath = self.thumbnail.urlPath(type: type)
        let expectedPath = "\(self.path)/\(type.rawValue).\(self.ext)"
        XCTAssertEqual(urlPath, expectedPath)
    }
}
