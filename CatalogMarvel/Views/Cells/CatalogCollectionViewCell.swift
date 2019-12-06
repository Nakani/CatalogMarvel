//
//  CatalogCollectionViewCell.swift
//  CatalogMarvel
//
//  Created by Diogo Guedes on 04/12/19.
//  Copyright © 2019 Diogo Guedes. All rights reserved.
//

import UIKit

class CatalogCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageViewCharacter: UIImageView!
    
    var viewModel: CatalogCellViewModel! {
        didSet {
            self.imageViewCharacter.download(from: self.viewModel.thumbnailURL)
        }
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        self.imageViewCharacter.image = nil
    }
}

