//
//  ProductDetailViewController.swift
//  DessertStore
//
//  Created by Ting on 2019/8/18.
//  Copyright © 2019 Ting. All rights reserved.
//

import UIKit

class ProductDetailViewController: UICollectionViewController {
    
    lazy var dataSource = ProductDetailDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        setupCollectionView()
        //setupCollectionViewLayout()
    }
    
    fileprivate func setupNav() {
        self.navigationController?.navigationBar.tintColor = .black
    }
    
    fileprivate func setupCollectionView() {
        
        collectionView.register(ProductDetailHeader.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: ProductDetailHeader.identifier)
        
        collectionView.register(ProductDetailCell.self, forCellWithReuseIdentifier: ProductDetailCell.identifier)
        
        collectionView.dataSource = self.dataSource
        collectionView.delegate = self
        
        collectionView.contentInset = UIEdgeInsets.init(top: 8, left: 0, bottom: 8, right: 0)
        
        collectionView.alwaysBounceVertical = true
        
        collectionView.contentInsetAdjustmentBehavior = .never
        collectionView.backgroundColor = .yellow
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("INDEX:\(indexPath.item)")
        
    }
    
}

extension ProductDetailViewController: UICollectionViewDelegateFlowLayout {
    
    // MARK: - Header 高度設置
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        
        return .init(width: collectionView.frame.width, height: 340)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize.init(width: collectionView.frame.width, height: 186)
    }
    
}
