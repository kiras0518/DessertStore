//
//  ProfileContainerController.swift
//  DessertStore
//
//  Created by Ting on 2019/9/17.
//  Copyright © 2019 Ting. All rights reserved.
//

import UIKit

class ProfileContainerController: UIViewController {
    
    lazy var header = ProfileContainerHeader()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNav()
        setupHeader()
        //setupChildViewController()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //NavigationFactory.shared.setupNav(vc: self, colors: [.white, .white], barStyle: .default)
    }
    
    fileprivate func setupHeader() {
        
        view.addSubview(header)
        header.anchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor)
//        dataSource.headerHeightConstraint = header.heightAnchor.constraint(equalToConstant: dataSource.sizeForHeaderHeight)
//        dataSource.headerHeightConstraint?.isActive = true
//
//        view.addSubview(containerView)
//        containerView.anchor(top: header.bottomAnchor, leading: view.leadingAnchor, bottom: view.bottomAnchor, trailing: view.trailingAnchor)
//
//        header.mallPurchaseTabbarController = dataSource.mallPurchaseTabbarController
//
//        header.models = AuthServices.shared.userRsRoledata
//
    }
    
    
    fileprivate func setupNav() {
        //NavigationFactory.shared.setupNavigationBarTitle(vc: self, text: "Profile")
        self.navigationController?.navigationBar.tintColor = .seaBlue
    }
    
}
