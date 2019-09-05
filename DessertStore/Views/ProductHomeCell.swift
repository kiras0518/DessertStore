//
//  ProductHomeCell.swift
//  DessertStore
//
//  Created by Ting on 2019/8/20.
//  Copyright © 2019 Ting. All rights reserved.
//

import UIKit

class ProductHomeCell: UICollectionViewCell {
    
    static let identifier = "ProductHomeCellId"
    
    override var reuseIdentifier: String? {
        return ProductHomeCell.identifier
    }
    
    lazy var cardView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }()
    
    lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 4
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    lazy var titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.textAlignment = .center
        //        titleLabel.textColor = style.titleColor
        //        titleLabel.font = style.titleFont
        
        return titleLabel
    }()
    
    lazy var subtitleLabel: UILabel = {
        let subtitleLabel = UILabel()
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        subtitleLabel.textAlignment = .center
        subtitleLabel.numberOfLines = 0
        //subtitleLabel.font = style.subtitleFont
        
        return subtitleLabel
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(cardView)
        cardView.anchor(top: nil, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 0), size: .init(width: 143, height: 60))
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}


