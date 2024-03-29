//
//  CategoriesViewController.swift
//  ShoppingCart
//
//  Created by macbook on 5/6/19.
//  Copyright © 2019 iosLab. All rights reserved.
//

import UIKit

class CategoriesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var categoriesTableView: UITableView!
    
    var category: CatalogType!
    
    let womenCategory = [CategoriesItem(name: "Nylon Tricot Malibu One Piece" , imageName: "women1", price: 880.00, add: false, type: .women), CategoriesItem(name: "Stretch Velour Long Sleeve Raglan Crew", imageName: "women2", price: 1071.00, add: false, type: .women), CategoriesItem(name: "Power Wash Fitted T-Shirt", imageName: "women3", price:421.00, add: false, type: .women), CategoriesItem(name: "The Easy Jean", imageName: "women4", price: 1300.00, add: false, type: .women)]
    
    let menCategory = [CategoriesItem(name: "California Fleece Regan", imageName: "men1", price: 688.00, add: false, type: .men), CategoriesItem(name: "Crinkle Nylon Team Jacket", imageName: "men2", price: 382.00, add: false, type: .men), CategoriesItem(name: "Basic Knit Cardigan", imageName: "men3", price: 994.00, add: false, type: .men), CategoriesItem(name: "Denim Rad Short", imageName: "men4", price: 918.00, add: false, type: .men)]
    
    let dogsCategory = [CategoriesItem(name: "Sleeve Dog Raglan", imageName: "dog1", price: 229.00, add: false, type: .dogs), CategoriesItem(name: "Sleve Small Dog Raglan", imageName: "dog2", price: 229.00, add: false, type: .dogs), CategoriesItem(name: "Flex Fleece Small Dog Zip Hoodie", imageName: "dog3", price: 344.00, add: false, type: .dogs), CategoriesItem(name: "Flex Fleece Small Dog Zip Hoodie", imageName: "dog4", price: 344.00, add: false, type: .dogs)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        categoriesTableView.delegate = self
        categoriesTableView.dataSource = self
        let carButton = UIBarButtonItem(image: UIImage(named: "car"), style: .done, target: self, action: #selector(showCar))
        navigationItem.rightBarButtonItem = carButton
    }
    
    //Funcion que se manda a llamar cuando presione el botón
    @objc func showCar(){
        //Se crea la referencia del storyboard
        let cartStoryboard = UIStoryboard(name: "CartStoryboard", bundle: nil)
        let cartVC = cartStoryboard.instantiateViewController(withIdentifier: "cartVC")
        //Se crea un navigation controller
        let nv = UINavigationController(rootViewController: cartVC)
        //Se presenta el navigation controller
        present(nv, animated: true, completion: nil)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch category {
        case .women?:
            return womenCategory.count
        case .men?:
            return menCategory.count
        case .dogs?:
            return dogsCategory.count
        default:
            return 0
        }
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "categoriesCell", for: indexPath) as? CategoriesCellTableViewCell else { return UITableViewCell() }
        
        switch category {
        case .women?:
            let category = womenCategory[indexPath.row]
            cell.categoriesItem = category
            return cell
        case .men?:
            let category = menCategory[indexPath.row]
            cell.categoriesItem = category
            return cell
        case .dogs?:
            let category = dogsCategory[indexPath.row]
            cell.categoriesItem = category
            return cell
        default:
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
    }
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
