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
    
    let womenCategory = [CategoriesItem(name: "women1", imageName: "Nylon Tricot Malibu One Piece", price: 880.00, add: false, type: .women), CategoriesItem(name: "women2", imageName: "Stretch Velour Long Sleeve Raglan Crew", price: 1071.00, add: false, type: .women), CategoriesItem(name: "women3", imageName: "Power Wash Fitted T-Shirt", price:421.00, add: false, type: .women), CategoriesItem(name: "women4", imageName: "The Easy Jean", price: 1300.00, add: false, type: .women)]
    
    let menCategory = [CategoriesItem(name: "men1", imageName: "California Fleece Regan", price: 688.00, add: false, type: .men), CategoriesItem(name: "men2", imageName: "Crinkle Nylon Team Jacket", price: 382.00, add: false, type: .men), CategoriesItem(name: "Basic Knit Cardigan", imageName: "", price: 994.00, add: false, type: .men), CategoriesItem(name: "men4", imageName: "Denim Rad Short", price: 918.00, add: false, type: .men)]
    
    let dogsCategory = [CategoriesItem(name: "dog1", imageName: "Sleeve Dog Raglan", price: 229.00, add: false, type: .dogs), CategoriesItem(name: "dog2", imageName: "Sleve Small Dog Raglan", price: 229.00, add: false, type: .dogs), CategoriesItem(name: "dog3", imageName: "Flex Fleece Small Dog Zip Hoodie", price: 344.00, add: false, type: .dogs), CategoriesItem(name: "dog4", imageName: "Flex Fleece Small Dog Zip Hoodie", price: 344.00, add: false, type: .dogs)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        categoriesTableView.delegate = self
        categoriesTableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return womenCategory.count
        return womenCategory.count 
        //return dogsCategory.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "categoriesCell", for: indexPath) as? CategoriesCellTableViewCell else { return UITableViewCell() }
        
        cell.categoriesLabel.text = womenCategory[indexPath.row].name
        cell.categoriesImageView.image = UIImage(named: womenCategory[indexPath.row].imageName)
        cell.categoriesPrice.text = womenCategory[indexPath.row].name
        cell.type = womenCategory[indexPath.row].type
        return cell
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
