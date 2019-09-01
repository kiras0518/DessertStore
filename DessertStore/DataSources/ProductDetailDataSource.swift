//
//  ProductDetailDataSource.swift
//  DessertStore
//
//  Created by Ting on 2019/8/19.
//  Copyright © 2019 Ting. All rights reserved.
//

import UIKit

class ProductDetailDataSource: NSObject, UICollectionViewDataSource {
    
    // MARK: - Collection View Data Source
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ProductDetailCell.identifier, for: indexPath) as? ProductDetailCell
        
        cell?.backgroundColor = .blue
        
        return cell ?? UICollectionViewCell.init()
    }
    
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        if kind == UICollectionView.elementKindSectionHeader {
            
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: ProductDetailHeader.identifier, for: indexPath) as? ProductDetailHeader
            
            return header ?? UICollectionReusableView()
            
        }
        
        return UICollectionReusableView()
        
    }
    
}
