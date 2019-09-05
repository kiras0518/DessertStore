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
    
    lazy var bannerImageView: UIView = {
        let iv = UIView()
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        iv.backgroundColor = .red
        return iv
    }()
    
    lazy var addButton: UIButton = {
        
        let btn = UIButton()
        //button.image = #imageLiteral(resourceName: "btnOnUploadPic")
        btn.setTitle("Add to Cart", for: .normal)
        btn.backgroundColor = .magenta
        return btn
    }()
    
    lazy var nameLabel: UILabel = {
        let lb = UILabel()
        lb.text = "Cake"
        //lb.textColor = style.indicatorTitleColor
        //lb.fontSize = 22
        lb.textAlignment = .center
        
        return lb
    }()
    
    lazy var priceLabel: UILabel = {
        let lb = UILabel()
        lb.text = "$120"
        //lb.textColor = style.indicatorTitleColor
        //lb.fontSize = 22
        lb.textAlignment = .center
        
        return lb
    }()
    
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        //Header View
        backgroundColor = .green
        
        addSubview(bannerImageView)
        bannerImageView.anchor(top: topAnchor, leading: leadingAnchor, bottom: nil, trailing: trailingAnchor, size: .init(width: 0, height: 264))
        
        addSubview(addButton)
        addButton.anchor(top: nil, leading: nil, bottom: bottomAnchor, trailing: trailingAnchor, padding: .init(top: 0, left: 0, bottom: 20, right: 20), size: .init(width: 113, height: 30))
        
        addSubview(nameLabel)
        addSubview(priceLabel)
        
        let detailStackView = UIStackView.init(arrangedSubviews: [nameLabel, priceLabel])
        
        detailStackView.axis = .vertical
        detailStackView.alignment = .fill
        detailStackView.spacing = 16
        detailStackView.distribution = .fillEqually
        
        addSubview(detailStackView)
        detailStackView.anchor(top: topAnchor, leading: leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 30, left: 110, bottom: 0, right: 0))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
