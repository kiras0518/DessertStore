//
//  Product.swift
//  DessertStore
//
//  Created by Ting on 2019/8/18.
//  Copyright © 2019 Ting. All rights reserved.
//

import UIKit

struct Product {
    var name: String
    var price: Int
    var id: String
    var image: UIImage?
    var isLike: Bool
    
    init(outname: String, outprice: Int, outid: String, outLike: Bool) {
        self.name = outname
        self.price = outprice
        self.id = outid
        self.isLike = false
    }
}

struct Comment {
    let text: String
    let id: String
    let user: User
    
    init(outtext: String, outid: String, outuser: User) {
        self.text = outtext
        self.id = outid
        self.user = outuser
    }
}

struct User {
    let name: String
    let id: String
    
    init(outname: String, outid: String) {
        self.name = outname
        self.id = outid
    }
}

struct OrderId {
    let id: String
    
    init(outid: String) {
        self.id = outid
    }
}

struct TransctionId {
    let id: String
    
    init(outid: String) {
        self.id = outid
    }
}

struct ProfileMe {
    let name: String
    let id: String
    let firstName: String
    let lastName: String
    
    init(outname: String, outid: String, outfirstName: String, outlastName: String) {
        self.name = outname
        self.id = outid
        self.firstName = outfirstName
        self.lastName = outlastName
    }
}

struct ProfileMyOrder {
    let created: String
    let orderId: String
    let totalAmount: Int
    
    init(created: String, orderId: String, totalCount: Int) {
        self.created = created
        self.orderId = orderId
        self.totalAmount = totalCount
    }
}

struct ProfileMyOrderItem {
    let productId: String
    let quantity: Int
    
    init(productId: String, quantity: Int) {
        self.productId = productId
        self.quantity = quantity
    }
}
