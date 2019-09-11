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
        view.backgroundColor = .white
        view.layer.borderWidth = 0.4
        view.layer.cornerRadius = 3
        view.layer.masksToBounds = true
        
        return view
    }()
    
    lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 4
        imageView.layer.masksToBounds = true
        imageView.image = #imageLiteral(resourceName: "ca")
        imageView.anchor(top: nil, leading: nil, bottom: nil, trailing: nil, padding: .init(top: 0, left: 0, bottom: 0, right: 0), size: .init(width: 0, height: 100))
        
        return imageView
    }()
    
    lazy var titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.textAlignment = .left
        titleLabel.text = "Holiday Lollipop"
        
        return titleLabel
    }()
    
    lazy var priceLabel: UILabel = {
        let priceLabel = UILabel()
        priceLabel.translatesAutoresizingMaskIntoConstraints = false
        priceLabel.textAlignment = .right
        //subtitleLabel.numberOfLines = 0
        priceLabel.text = "$120"
        
        return priceLabel
    }()
    
    lazy var likeBtn: UIButton = {
        let likeBtn = UIButton()
        likeBtn.backgroundColor = .white
        likeBtn.setImage(UIImage(named: "icon-heart"), for: .normal)
        likeBtn.layer.cornerRadius = 5
        likeBtn.layer.masksToBounds = true
        likeBtn.layer.borderWidth = 0.5
        likeBtn.anchor(top: nil, leading: nil, bottom: nil, trailing: nil, size: .init(width: 30, height: 20))
        likeBtn.addTarget(self, action: #selector(didLike), for: .touchUpInside)
        
        return likeBtn
    }()
    
    @objc fileprivate func didLike() {
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(cardView)
        //cardView.anchor(top: topAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 0), size: .init(width: 0, height: 60))
        cardView.fillSuperview(padding: .init(top: 0, left: 0, bottom: 0, right: 0))
        
        cardView.addSubview(imageView)
        imageView.anchor(top: cardView.topAnchor, leading: cardView.leadingAnchor, bottom: cardView.bottomAnchor, trailing: cardView.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 60, right: 0))
        
        cardView.addSubview(titleLabel)
        titleLabel.anchor(top: imageView.bottomAnchor, leading: cardView.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 8, left: 8, bottom: 0, right: 0))
        
        cardView.addSubview(priceLabel)
        priceLabel.anchor(top: nil, leading: nil, bottom: cardView.bottomAnchor, trailing: cardView.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 6, right: 14))
        
        cardView.addSubview(likeBtn)
        likeBtn.anchor(top: nil, leading: cardView.leadingAnchor, bottom: cardView.bottomAnchor, trailing: nil, padding: .init(top: 0, left: 8, bottom: 6, right: 0))
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}


