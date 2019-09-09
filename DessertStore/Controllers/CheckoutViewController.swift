//
//  CheckoutViewController.swift
//  DessertStore
//
//  Created by kiras on 2019/9/10.
//  Copyright © 2019 Ting. All rights reserved.
//

import UIKit

class CheckoutViewController: UIViewController {
    
    lazy var checkoutView = CheckoutView()
    
    lazy var contentView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubView()
    }
    
    fileprivate func setupNav() {
        self.navigationController?.navigationBar.tintColor = .blue
    }
    
    fileprivate func setupSubView() {
          view.addSubview(checkoutView)
    }
    
}

