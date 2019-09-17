//
//  MainTabBarController.swift
//  DessertStore
//
//  Created by Ting on 2019/8/18.
//  Copyright © 2019 Ting. All rights reserved.
//

import UIKit
//import PKCHelper

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        setupViewController()
        setupBackgroundImage()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    func setupBackgroundImage() {
    }
    
    fileprivate func setupViewController() {
       
        let homeVC = ProductHomeViewController(collectionViewLayout: UICollectionViewFlowLayout())
        let navHomeController = UINavigationController(rootViewController: homeVC)
        
        //navHomeController.navigationBar.prefersLargeTitles = true
        
        homeVC.navigationItem.title = "商店"
        
        homeVC.view.backgroundColor = .red
        
        navHomeController.tabBarItem.title = "Store"
        
        navHomeController.tabBarItem.image = #imageLiteral(resourceName: "icon-store")
        
//        let profileVC = ProductDetailViewController(collectionViewLayout: UICollectionViewFlowLayout())
//        let navProfileController = UINavigationController(rootViewController: profileVC)
        
        ///
        let profileVC = ProfileContainerController(nibName: nil, bundle: nil)
        let navProfileController = UINavigationController(rootViewController: profileVC)
        
        profileVC.navigationItem.title = "個人"
        
        navProfileController.tabBarItem.title = "Profile"
        
        navProfileController.tabBarItem.image = #imageLiteral(resourceName: "icon-store")
        
        ///
        let cellVC = OrderContainerController(collectionViewLayout: UICollectionViewFlowLayout())
        let cellController = UINavigationController(rootViewController: cellVC)
        
        cellVC.navigationItem.title = "這是訂單的CELL"
        
        cellVC.view.backgroundColor = .red
        
        cellController.tabBarItem.title = "訂單"
        
        cellController.tabBarItem.image = #imageLiteral(resourceName: "icon-check-selected")
        
        viewControllers = [navHomeController,
                           navProfileController, cellController]
        
        // modify tab bar item insets
        
//        guard let items = tabBar.items else { return }
//
//        for item in items {
//            item.imageInsets = UIEdgeInsets(top: 9, left: 0, bottom: -9, right: 0)
//        }
        
    }
    
}
