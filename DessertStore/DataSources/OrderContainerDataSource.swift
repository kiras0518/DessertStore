//
//  OrderContainerDataSource.swift
//  DessertStore
//
//  Created by Ting on 2019/9/17.
//  Copyright © 2019 Ting. All rights reserved.
//

import UIKit

class OrderContainerDataSource: NSObject, UICollectionViewDataSource {
    
    
    // MARK: - Collection View Data Source
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: OrderContentViewCell.identifier, for: indexPath) as? OrderContentViewCell
        
        cell?.backgroundColor = .orange
        
        return cell ?? UICollectionViewCell()
    }
    
}
