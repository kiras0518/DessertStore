//
//  ProductDetailHeader.swift
//  DessertStore
//
//  Created by Ting on 2019/8/18.
//  Copyright © 2019 Ting. All rights reserved.
//

import UIKit

class ProductDetailHeader: UICollectionReusableView {
    
    static let identifier = "ProductDetailHeaderId"
    
    override var reuseIdentifier: String? {
        return ProductDetailHeader.identifier
    }
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        
        backgroundColor = .green
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
