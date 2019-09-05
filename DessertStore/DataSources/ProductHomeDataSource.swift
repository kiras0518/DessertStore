//
//  ProductHomeDataSource.swift
//  DessertStore
//
//  Created by Ting on 2019/8/20.
//  Copyright © 2019 Ting. All rights reserved.
//

import UIKit

class ProductHomeDataSource: NSObject, UICollectionViewDataSource {
    
    // MARK: - Collection View Data Source
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 16
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ProductHomeCell.identifier, for: indexPath) as? ProductHomeCell
        
        cell?.backgroundColor = .orange
        
        return cell ?? UICollectionViewCell.init()
    }
    
}


