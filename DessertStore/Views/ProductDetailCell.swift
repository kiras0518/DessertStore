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
    
    lazy var viewContraner: UIView = {
        let iv = UIView()
        iv.backgroundColor = .white
        iv.layer.cornerRadius = 4
        
        return iv
    }()
    
    lazy var mainImageView: UIImageView = {
        let uIV = UIImageView()
        uIV.widthAnchor.constraint(equalToConstant: 40).isActive = true
        uIV.heightAnchor.constraint(equalToConstant: 40).isActive = true
        uIV.layer.cornerRadius = 20
        uIV.backgroundColor = .orange
        //uIV.layer.borderColor = UIColor.lightGray.cgColor
        //uIV.layer.borderWidth = 1
        
        uIV.layer.masksToBounds = true
        
        return uIV
    }()

    lazy var nameLabel: UILabel = {
        let lb = UILabel()
        lb.text = "Carolyn Simmons"
        lb.textAlignment = .left
        
        return lb
    }()
    
    lazy var contentLabel: UILabel = {
        let lb = UILabel()
        lb.text = "Aenean lacinia bibendum nulla sed consectetur. Cras justo odio, dapibus ac fac."
        lb.numberOfLines = 0
        
        return lb
    }()
    
    fileprivate func titleStackView() {
        let titleStackView = UIStackView.init(arrangedSubviews: [nameLabel, contentLabel])
        
        titleStackView.axis = .vertical
        titleStackView.alignment = .fill
        titleStackView.spacing = 5
        titleStackView.distribution = .fillEqually
        
        viewContraner.addSubview(titleStackView)
        titleStackView.anchor(top: nil, leading: mainImageView.trailingAnchor, bottom: nil, trailing: viewContraner.trailingAnchor, padding: .init(top: 0, left: 20, bottom: 6, right: 6))
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .orange
        
        contentView.addSubview(viewContraner)
        viewContraner.fillSuperview(padding: .init(top: 0, left: 16, bottom: 0, right: 16))
        
        viewContraner.addSubview(mainImageView)
        mainImageView.anchor(top: viewContraner.topAnchor, leading: viewContraner.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 20, left: 20, bottom: 0, right: 0))
        
        titleStackView()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
