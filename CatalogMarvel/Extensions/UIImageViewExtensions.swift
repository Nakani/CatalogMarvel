//
//  UIImageViewExtensions.swift
//  CatalogMarvel
//
//  Created by Diogo Guedes on 04/12/19.
//  Copyright © 2019 Diogo Guedes. All rights reserved.
//

import Foundation
import Alamofire

extension UIImageView {
    func download(from url: String, completionHandler: ((UIImage?) -> Void)? = nil) {
        AF.request(url).responseData { (response) in
            guard let data = response.data else { return }
            self.image = UIImage(data: data)
            
            if let handler = completionHandler {
                handler(self.image)
            }
        }
    }
}
