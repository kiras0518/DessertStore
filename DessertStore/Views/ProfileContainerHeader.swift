//
//  ProfileContainerHeader.swift
//  DessertStore
//
//  Created by Ting on 2019/9/17.
//  Copyright © 2019 Ting. All rights reserved.
//

import UIKit

class ProfileContainerHeader: UIView {
    
    lazy var cardView: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        
        return view
    }()
    
    lazy var bannerImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.image = #imageLiteral(resourceName: "ca")
        
        return iv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        
        addSubview(cardView)
        cardView.fillSuperview(padding: .init(top: 0, left: 0, bottom: 32, right: 0))
        
        cardView.addSubview(bannerImageView)
        bannerImageView.anchor(top: cardView.topAnchor, leading: cardView.leadingAnchor, bottom: nil, trailing: cardView.trailingAnchor, size: .init(width: 0, height: 268))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}


struct ProfileTabbarTitles {
    
    static let shared = ProfileTabbarTitles()
    
    var titles: [String] {
        return ["Favorite","Purchased"]
    }
}

