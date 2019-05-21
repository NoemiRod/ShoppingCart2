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
            cell.categoriesLabel.text = womenCategory[indexPath.row].name
            cell.categoriesImageView.image = UIImage(named: womenCategory[indexPath.row].imageName)
            cell.categoriesPrice.text = "$\(womenCategory[indexPath.row].price) MXN"
            cell.type = womenCategory[indexPath.row].type
            return cell
        case .men?:
            cell.categoriesLabel.text = menCategory[indexPath.row].name
            cell.categoriesImageView.image = UIImage(named: menCategory[indexPath.row].imageName)
            cell.categoriesPrice.text = "$\(menCategory[indexPath.row].price) MXN"
            cell.type = menCategory[indexPath.row].type
            return cell
        case .dogs?:
            cell.categoriesLabel.text = dogsCategory[indexPath.row].name
            cell.categoriesImageView.image = UIImage(named: dogsCategory[indexPath.row].imageName)
            cell.categoriesPrice.text = "$\(dogsCategory[indexPath.row].price) MXN"
            cell.type = dogsCategory[indexPath.row].type
            return cell
        default:
            return cell
        }
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
