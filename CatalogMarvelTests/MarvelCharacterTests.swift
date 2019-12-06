//
//  MarvelCharacterTests.swift
//  CatalogMarvelTests
//
//  Created by Diogo Guedes on 05/12/19.
//  Copyright © 2019 Diogo Guedes. All rights reserved.
//

import XCTest
@testable import CatalogMarvel

class MarvelCharacterTest: XCTestCase {
    
    var character: MarvelCharacter!
    
    override func setUp() {
        self.character = MarvelCharacter()
    }
    
    func testShouldReturnNilWhenNoUrlInformed() {
        let url = self.character.getLink(to: .comiclink)
        XCTAssertNil(url)
    }
    
    func testShouldReturnUrlByType() {
        let marvelUrl = MarvelUrl(type: .comiclink, url: "http://fakeimage.com/etc.png")
        self.character.urls.append(marvelUrl)
        let existingUrl = self.character.getLink(to: .comiclink)
        let notExistingUrl = self.character.getLink(to: .detail)
        
        XCTAssertEqual(marvelUrl.url, existingUrl?.url)
        XCTAssertNil(notExistingUrl)
    }
    
    override func tearDown() {
        character = nil
    }
    
}
