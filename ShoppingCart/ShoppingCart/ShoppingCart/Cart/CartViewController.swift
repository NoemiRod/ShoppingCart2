//
//  CartViewController.swift
//  ShoppingCart
//
//  Created by Noemí Rodríguez on 5/29/19.
//  Copyright © 2019 iosLab. All rights reserved.
//

import UIKit

class CartViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var cartTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let keepShoopingButton = UIBarButtonItem(title: "Keep Shooping", style: .done, target: self, action: #selector(dismissList))
        navigationItem.leftBarButtonItem = keepShoopingButton
        let checkoutButton = UIBarButtonItem(title: "Check Out", style: .done, target: self, action: #selector(checkoutList))
        navigationItem.rightBarButtonItem = checkoutButton
        navigationItem.title = "Cart"
        
        cartTableView.delegate = self
        cartTableView.dataSource = self
    }
    
    @objc func dismissList(){
        dismiss(animated: true, completion: nil)
    }
    
    @objc func checkoutList(){
        let checkoutAlert = UIAlertController(title: "Shoping Cart", message: "Are you shure you want to buy this \(CartContainer.shared.showCart().count) ? ", preferredStyle: .alert)
        //El shared es para llamar al carrito desde cualquier VC
        let action1 = UIAlertAction(title: "Check Out", style: .default) { (action) in
            CartContainer.shared.removeAllItems()
            //Aquí se recarga la tabla y el TV sabe que se encuentra vacío
            self.cartTableView.reloadData()
            let successAlert = UIAlertController(title: "Success purchase", message: "Thank you for buying at Shooping Cart", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
            successAlert.addAction(okAction)
            self.present(successAlert, animated: true, completion: nil)
        }
        let action2 = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        checkoutAlert.addAction(action1)
        checkoutAlert.addAction(action2)
        

        self.present(checkoutAlert, animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CartContainer.shared.showCart().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cartCell") as? CartTableViewCell else { return UITableViewCell() }
        //Accedemos al elemento del carrito
        let item = CartContainer.shared.showCart()[indexPath.row]
        cell.textLabel?.text = item.name
        cell.imageView?.image = UIImage(named: item.imageName)
        cell.priceLabel.text = "$\(item.price) MXN"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
    }
}
