//
//  ProductDetailCell.swift
//  DessertStore
//
//  Created by Ting on 2019/8/19.
//  Copyright © 2019 Ting. All rights reserved.
//

import UIKit

class ProductDetailCell: UICollectionViewCell {
    
    static let identifier = "ProductDetailCellId"
    
    override var reuseIdentifier: String? {
        return ProductDetailCell.identifier
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .yellow
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
