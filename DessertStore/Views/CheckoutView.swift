//
//  CheckoutView.swift
//  DessertStore
//
//  Created by kiras on 2019/9/9.
//  Copyright © 2019 Ting. All rights reserved.
//

import UIKit

class CheckoutView: UIView {
    
    static let identifier = "CheckoutViewId"
    
    var reuseIdentifier: String? {
        return CheckoutView.identifier
    }
    
    lazy var foodImageView: UIView = {
        let iv = UIView()
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        iv.backgroundColor = .red
        
        return iv
    }()
    
    lazy var nameLabel: UILabel = {
        let lb = UILabel()
        lb.text = "Cake"
        lb.textAlignment = .left
        
        return lb
    }()
    
    lazy var priceLabel: UILabel = {
        let lb = UILabel()
        lb.text = "$120"
        lb.textAlignment = .left
        
        return lb
    }()
    
    lazy var stepperCount: UIStepper = {
        let stepper = UIStepper()
        stepper.value = 1
        stepper.maximumValue = 100
        stepper.stepValue = 1
        stepper.autorepeat = true
        stepper.isContinuous = true
        
        stepper.addTarget(self, action: #selector(onStepperChange), for: .valueChanged)
        
        return stepper
    }()
    
    @objc func onStepperChange() {
        // 將 UILabel 的值設置為 UIStepper 目前的值
        countLabel.text = "\(stepperCount.value)"
    }
    
    lazy var countLabel: UILabel = {
        let lb = UILabel()
        lb.text = "1"
        lb.textAlignment = .left
        
        return lb
    }()
    
    lazy var purchaseButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Purchase", for: .normal)
        btn.backgroundColor = .white
        btn.tintColor = .lightishRed
        
        return btn
    }()
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        
        backgroundColor = .white
        
        addSubview(foodImageView)
        foodImageView.anchor(top: topAnchor, leading: leadingAnchor, bottom: nil, trailing: trailingAnchor, size: .init(width: 80, height: 68))
        addSubview(nameLabel)
        nameLabel.anchor(top: topAnchor, leading: foodImageView.trailingAnchor, bottom: nil, trailing: nil)
        
        addSubview(priceLabel)
        priceLabel.anchor(top: nameLabel.bottomAnchor, leading: foodImageView.trailingAnchor, bottom: nil, trailing: nil)
        
        addSubview(purchaseButton)
        purchaseButton.anchor(top: nil, leading: nil, bottom: bottomAnchor, trailing: trailingAnchor, padding: .init(top: 0, left: 0, bottom: 20, right: 20), size: .init(width: 113, height: 30))
        
        
        
        
//        let detailStackView = UIStackView.init(arrangedSubviews: [nameLabel, priceLabel])
//
//        detailStackView.axis = .vertical
//        detailStackView.alignment = .fill
//        detailStackView.spacing = 16
//        detailStackView.distribution = .fillEqually
//
//        addSubview(detailStackView)
//        detailStackView.anchor(top: topAnchor, leading: leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 30, left: 110, bottom: 0, right: 0))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
