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
    
    lazy var containerView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNav()
        setupSubView()
    }
    
    fileprivate func setupNav() {
        self.navigationController?.navigationBar.tintColor = .blue
    }
    
    fileprivate func setupSubView() {
        //          view.addSubview(checkoutView)
        //        checkoutView.anchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: view.bottomAnchor, trailing: view.trailingAnchor)
        view.addSubview(containerView)
        containerView.anchor(top: view.bottomAnchor, leading: view.leadingAnchor, bottom: view.bottomAnchor, trailing: view.trailingAnchor)
    }
    
}

