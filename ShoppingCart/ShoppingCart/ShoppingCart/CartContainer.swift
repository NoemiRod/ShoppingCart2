//
//  CartContainer.swift
//  ShoppingCart
//
//  Created by Noemí Rodríguez Sandoval D3 on 6/3/19.
//  Copyright © 2019 iosLab. All rights reserved.
//

import Foundation

class CartContainer {
    
    //Arreglo vacío
    private var arrayContainer = [CategoriesItem]()
    //Se crea un objeto para acceder a el a través de shared
    static let shared = CartContainer()
    
    func addItem(item:CategoriesItem) {
        arrayContainer.append(item)
    }
    
    func removeItem(index:Int) {
        arrayContainer.remove(at: index)
    }
    
    func showCart() -> [CategoriesItem] {
        return arrayContainer
    }
    
    func removeAllItems() {
        arrayContainer.removeAll()
    }
}
