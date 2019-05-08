//
//  CatalogModel.swift
//  ShoppingCart
//
//  Created by Noemí Rodríguez Sandoval D3 on 4/25/19.
//  Copyright © 2019 iosLab. All rights reserved.
//

import Foundation

struct CatalogItem {
    var name: String
    var imageName: String
    var type: CatalogType
}

enum CatalogType:String {
    case women
    case men
    case dogs
}
