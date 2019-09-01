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
        self.view.backgroundColor = .white
        setupCollectionView()
        setupCollectionViewLayout()
        
    }
    
    fileprivate func setupCollectionView() {
        
        collectionView.register(ProductDetailHeader.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: ProductDetailHeader.identifier)
        
        collectionView.register(ProductDetailCell.self, forCellWithReuseIdentifier: ProductDetailCell.identifier)
        
        collectionView.dataSource = self.dataSource
        collectionView.delegate = self
        
        collectionView.contentInsetAdjustmentBehavior = .never
        //collectionView.backgroundColor = .black
        
    }
    
    fileprivate func setupCollectionViewLayout() {
        if let layout = collectionViewLayout as? UICollectionViewFlowLayout {
            layout.sectionInset = .init(top: 16, left: 16, bottom: 16, right: 16)
            //layout.minimumLineSpacing = 40
        }
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("INDEX:\(indexPath.item)")
    }
    
}

extension ProductDetailViewController: UICollectionViewDelegateFlowLayout {
    
    // MARK: - Header 高度設置
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        let width = view.frame.width
        return .init(width: width, height: 340)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width = view.frame.width
        return CGSize.init(width:( width - 20) , height: 86)
    }
    
}
