//
//  CatalogDetailViewController.swift
//  CatalogMarvel
//
//  Created by Diogo Guedes on 03/12/19.
//  Copyright © 2019 Diogo Guedes. All rights reserved.
//
import UIKit

class CatalogDetailViewController: UIViewController {

    var viewModel: CatalogDetailViewModel!
    var activityIndicator = UIActivityIndicatorView(style: .large)
    
    @IBOutlet weak var imageViewThumbnail: UIImageView!
    @IBOutlet weak var labelCharacterName: UILabel!
    @IBOutlet weak var labelCharacterDescription: UILabel!
    @IBOutlet weak var constraintStackButtonsHeight: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
    }
        
    private func setupThumbnail() {
        self.imageViewThumbnail.download(from: self.viewModel.thumbnailURL) { (data) in
            self.view.hideActivityIndicator(self.activityIndicator)
        }
    }
    
    func setupUI() {
        self.title = self.viewModel.characterName()

        self.view.showActivityIndicator(self.activityIndicator)
        self.setupThumbnail()
        self.labelCharacterName.text = "\(self.viewModel.characterName()) ·"
        
        let description = self.viewModel.characterDescription()
        self.labelCharacterDescription.text = description.isEmpty ? "No description available." : description
    }

}

