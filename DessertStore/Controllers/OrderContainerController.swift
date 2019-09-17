//
//  OrderContainerController.swift
//  DessertStore
//
//  Created by Ting on 2019/9/17.
//  Copyright © 2019 Ting. All rights reserved.
//

import UIKit

class OrderContainerController: UICollectionViewController {
    
    lazy var dataSource = OrderContainerDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.view.backgroundColor = .red
        
        setupCollectionView()
    }
    
    fileprivate func setupCollectionView() {
        
        collectionView.register(OrderContentViewCell.self, forCellWithReuseIdentifier: OrderContentViewCell.identifier)
        
        collectionView.dataSource = self.dataSource
        collectionView.delegate = self
        
        collectionView.contentInsetAdjustmentBehavior = .never
        
        collectionView.alwaysBounceVertical = true
        
        collectionView.backgroundColor = .lightGray
        collectionView.contentInset = UIEdgeInsets.init(top: 16, left: 0, bottom: 8, right: 0)
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        let itemData = dataSource.data.value[indexPath.item]
//        PopNotificationMessageService.shared.showNotificationFromBuyItemView(itemData: itemData)
    }
    
}

extension OrderContainerController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: collectionView.width, height: 100)
    }
}
