//
//  UIViewExtensions.swift
//  CatalogMarvel
//
//  Created by Diogo Guedes on 04/12/19.
//  Copyright © 2019 Diogo Guedes. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    func showActivityIndicator(_ activityIndicator: UIActivityIndicatorView) {
        activityIndicator.startAnimating()
        activityIndicator.center = self.center
        activityIndicator.color = .white
        self.addSubview(activityIndicator)
    }
    
    func hideActivityIndicator(_ activityIndicator: UIActivityIndicatorView) {
        activityIndicator.stopAnimating()
        activityIndicator.removeFromSuperview()
    }
    
}
