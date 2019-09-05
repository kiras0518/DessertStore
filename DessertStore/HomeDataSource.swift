//
//  HomeDataSource.swift
//  DessertStore
//
//  Created by Ting on 2019/8/18.
//  Copyright © 2019 Ting. All rights reserved.
//

import UIKit

class HomeDataSource: NSObject, UICollectionViewDataSource {
   
    // MARK: - cell id
    var cellId = HomeViewCell.identifier
    var itemHeight: CGFloat = 154
    
    // MARK: - Collection View Data Source
    public func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as? HomeViewCell
        
        //cell?.model = data.value[indexPath.item]
        
        return cell ?? UICollectionViewCell.init()
    }
    
}
