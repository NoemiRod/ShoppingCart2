//
//  CartViewController.swift
//  ShoppingCart
//
//  Created by Noemí Rodríguez on 5/29/19.
//  Copyright © 2019 iosLab. All rights reserved.
//

import UIKit

class CartViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let keepShoopingButton = UIBarButtonItem(title: "Keep Shooping", style: .done, target: self, action: #selector(dismissList))
        navigationItem.leftBarButtonItem = keepShoopingButton
        let checkoutButton = UIBarButtonItem(title: "Check Out", style: .done, target: self, action: #selector(checkoutList))
        navigationItem.rightBarButtonItem = checkoutButton
        navigationItem.title = "Cart"
    }
    
    @objc func dismissList(){
        dismiss(animated: true, completion: nil)
    }
    
    @objc func checkoutList(){
        let checkoutAlert = UIAlertController(title: "alert", message: "blabla", preferredStyle: .alert)
        let action1 = UIAlertAction(title: "Check Out", style: .default, handler: nil)
        let action2 = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        checkoutAlert.addAction(action1)
        checkoutAlert.addAction(action2)

        self.present(checkoutAlert, animated: true, completion: nil)
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

}
