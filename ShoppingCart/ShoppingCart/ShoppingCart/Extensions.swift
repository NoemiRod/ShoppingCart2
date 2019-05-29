//
//  Extensions.swift
//  ShoppingCart
//
//  Created by Noemí Rodríguez on 5/29/19.
//  Copyright © 2019 iosLab. All rights reserved.
//

import Foundation
import UIKit

extension UIResponder {
    public var parentViewController: UIViewController? { return next as? UIViewController ?? next?.parentViewController}
}
