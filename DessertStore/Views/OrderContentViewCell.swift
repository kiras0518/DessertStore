//
//  OrderContentViewCell.swift
//  DessertStore
//
//  Created by Ting on 2019/9/17.
//  Copyright © 2019 Ting. All rights reserved.
//

import UIKit

class OrderContentViewCell: UICollectionViewCell {
    
    static let identifier = "OrderContentViewCellId"
    
    override var reuseIdentifier: String? {
        return OrderContentViewCell.identifier
    }
    
    lazy var viewContraner: UIView = {
        let iv = UIView()
        iv.backgroundColor = .white
        iv.layer.cornerRadius = 5
        
        return iv
    }()
    
    lazy var foodImageView: UIImageView = {
        let iv = UIImageView.init()
        iv.contentMode = .scaleAspectFill
        iv.layer.cornerRadius = 4
        iv.clipsToBounds = true
        iv.image = #imageLiteral(resourceName: "ca")
        
        return iv
    }()
    
    lazy var dateLabel: UILabel = {
        let lb = UILabel()
        lb.adjustsFontSizeToFitWidth = true
        lb.text = "2019/09/87"
        
        return lb
    }()
    
    lazy var priceLabel: UILabel = {
        let lb = UILabel()
        lb.text = "價格："
        
        return lb
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(viewContraner)
        viewContraner.fillSuperview(padding: .init(top: 0, left: 10, bottom: 0, right: 10))
        
        viewContraner.addSubview(foodImageView)
        foodImageView.anchor(top: nil, leading: viewContraner.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 0, left: 10, bottom: 0, right: 0), size: .init(width: 80, height: 80))
        foodImageView.centerYAnchor.constraint(equalTo: viewContraner.centerYAnchor).isActive = true
        
        viewContraner.addSubview(dateLabel)
        dateLabel.anchor(top: viewContraner.topAnchor, leading: foodImageView.trailingAnchor, bottom: nil, trailing: nil , padding: .init(top: 10, left: 20, bottom: 0, right: 0))

        viewContraner.addSubview(priceLabel)
        priceLabel.anchor(top: dateLabel.bottomAnchor, leading: foodImageView.trailingAnchor, bottom: nil, trailing: nil, padding: .init(top: 10, left: 20, bottom: 0, right: 0))
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
