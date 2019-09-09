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
        
//        let view = GradientView(frame: self.tabBar.frame)
//        view.topColor = UIColor.white
//        view.bottomColor = UIColor.white
//        view.vertical = true
//        let image = UIImage.createPictureFromView(view: view)
//        self.tabBar.backgroundImage = image
    }
    
    fileprivate func setupViewController() {
       
        let homeVC = ProductHomeViewController(collectionViewLayout: UICollectionViewFlowLayout())
        let navHomeController = UINavigationController(rootViewController: homeVC)
        
        //navHomeController.navigationBar.prefersLargeTitles = true
        
        //homeVC.navigationItem.title = "商店"
        
        homeVC.view.backgroundColor = .red
        
        navHomeController.tabBarItem.title = "Store"
        
        navHomeController.tabBarItem.image = #imageLiteral(resourceName: "icon-store")
        
        let profileVC = ProductDetailViewController(collectionViewLayout: UICollectionViewFlowLayout())
        let navProfileController = UINavigationController(rootViewController: profileVC)
        
        let profileVC1 = CheckoutViewController(nibName: "Check", bundle: nil)
        let navProfileController1 = UINavigationController(rootViewController: profileVC1)
        //navProfileController.navigationBar.prefersLargeTitles = true
        
        //profileVC.navigationItem.title = "個人"
        
        profileVC.view.backgroundColor = .red
        
        navProfileController.tabBarItem.title = "Profile"
        
        navProfileController.tabBarItem.image = #imageLiteral(resourceName: "icon-store")
        
//
//        // aboutMe
//        let aboutMe = AboutMeContainerController()
//        let navAboutMe = templateNavController(image: #imageLiteral(resourceName: "bottomOffBtnOffAccount"), rootViewController: aboutMe, selectImage: #imageLiteral(resourceName: "bottomOnBtnOnAccount"))
        
//        tabBar.tintColor = UIColor.reddishOrange
//        tabBar.unselectedItemTintColor = .buttonoff
        
        viewControllers = [navHomeController,
                           navProfileController1]
        
        // modify tab bar item insets
        
//        guard let items = tabBar.items else { return }
//
//        for item in items {
//            item.imageInsets = UIEdgeInsets(top: 9, left: 0, bottom: -9, right: 0)
//        }
        
    }
    
//    fileprivate func templateNavController(image: UIImage?, rootViewController: UIViewController = UIViewController(), selectImage: UIImage? = nil) -> ScrollingNavigationController {
//
//        let viewNavController = ScrollingNavigationController(rootViewController: rootViewController)
//
//        if let image = image {
//            viewNavController.tabBarItem.image = image
//        }
//
//        if let selectImage = selectImage {
//            viewNavController.tabBarItem.selectedImage = selectImage
//        }
//
//        return viewNavController
//    }
    
}
