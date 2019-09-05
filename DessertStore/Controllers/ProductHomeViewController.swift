//
//  ProductViewController.swift
//  DessertStore
//
//  Created by Ting on 2019/8/18.
//  Copyright © 2019 Ting. All rights reserved.
//

import UIKit

class ProductHomeViewController: UICollectionViewController {
    
    lazy var dataSource = ProductHomeDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNav()
        setupCollectionView()
    }
    
    fileprivate func setupNav() {
        self.navigationController?.navigationBar.tintColor = .red
    }
    
    fileprivate func setupCollectionView() {
        
        collectionView.register(ProductHomeCell.self, forCellWithReuseIdentifier: ProductHomeCell.identifier)
        
        collectionView.dataSource = self.dataSource
        collectionView.delegate = self
        
        collectionView.contentInset = UIEdgeInsets.init(top: 20, left: 20, bottom: 20, right: 20)
        
        collectionView.alwaysBounceVertical = true
        
        collectionView.contentInsetAdjustmentBehavior = .never
        collectionView.backgroundColor = .white
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        <#code#>
    }
    
}

extension ProductHomeViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize.init(width: 154, height: 160)
    }
    
}
