//
//  HomeViewController.swift
//  DessertStore
//
//  Created by Ting on 2019/8/18.
//  Copyright © 2019 Ting. All rights reserved.
//

import UIKit

class HomeViewController: UICollectionViewController {
    
    lazy var dataSource = HomeDataSource()
    
    //lazy var dataSource =
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        
        
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10) // section與section之間的距離(如果只有一個section，可以想像成frame)
        layout.itemSize = CGSize(width: (self.view.frame.size.width - 30) / 2, height: 120) // cell的寬、高
        layout.minimumLineSpacing = CGFloat(integerLiteral: 10) // 滑動方向為「垂直」的話即「上下」的間距;滑動方向為「平行」則為「左右」的間距
        layout.minimumInteritemSpacing = CGFloat(integerLiteral: 10) // 滑動方向為「垂直」的話即「左右」的間距;滑動方向為「平行」則為「上下」的間距
        layout.scrollDirection = UICollectionView.ScrollDirection.vertical // 滑動方向預設為垂直。注意若設為垂直，則cell的加入方式為由左至右，滿了才會換行；若是水平則由上往下，滿了才會換列
        //self.myCollectionView = UICollectionView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height), collectionViewLayout: layout)
        
        //setupCollectionView()
    }
    
    func setupCollectionView() {
        collectionView.register(HomeViewCell.self, forCellWithReuseIdentifier: HomeViewCell.identifier)
        collectionView.dataSource = self.dataSource
        collectionView.delegate = self
        collectionView.backgroundColor = .blue
        collectionView.contentInsetAdjustmentBehavior = .never
        collectionView.contentInset = UIEdgeInsets.init(top: 8, left: 0, bottom: 0, right: 0)
        //layout()
    }
    
    
}


extension HomeViewController: UICollectionViewDelegateFlowLayout {
    // MARK: - UICollectionViewDelegate
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.frame.width
        return CGSize.init(width: width, height: dataSource.itemHeight)
    }
}


