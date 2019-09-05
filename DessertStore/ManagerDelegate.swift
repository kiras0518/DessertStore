//
//  ManagerDelegate.swift
//  DessertStore
//
//  Created by Ting on 2019/8/18.
//  Copyright © 2019 Ting. All rights reserved.
//

import Foundation

protocol ProductManagerDelegate: AnyObject {
    
//    func eatProducts(_ product: [Product])
//    func manager(_ manager: ProductManager, didFetch products: [Product], isChange: Bool)
//    func manager(_ manager: ProductManager, didFailWith error: Error)
//    func didFinishDownloadImage(image: UIImage)
    
}

protocol ProductCommentManagerDelegate: AnyObject {
    
//    func manager(_ manager: ProductCommentManager, didFetch comments: [Comment], users: [User])
//    func manager(_ manager: ProductCommentManager, didFailWith error: Error)
//    func didFinishCommentImage(_ commentUserImage: UIImage)
    
}

protocol ProfileManagerDelegate {
    //func manager(_ manager: ProfileManager, didFetch profileMe: [ProfileMe])
//    func managerProduct(_ product: [Product])
//    func manager(_ manager: ProfileManager, didFetch profileMe: [ProfileMe])
//    func manager(_ manager: ProfileManager, didFetch myOrder: [ProfileMyOrder])
//    func manager(_ manager: ProfileManager, didFailWith error: Error)
//    func didFinishDownloadImage(image: UIImage)
}

protocol CheckoutMangerDelegate {
//    func manager(_ manager: CheckoutManager, orderId: [OrderId])
//    func manager(_ manager: CheckoutManager, didFailWith error: Error)
}
