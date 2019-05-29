//
//  ViewController.swift
//  ShoppingCart
//
//  Created by Noemí Rodríguez Sandoval D3 on 4/25/19.
//  Copyright © 2019 iosLab. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var catalogTableView: UITableView!
    
    let catalogArray = [CatalogItem(name:"Women", imageName: "wom", type: .women), CatalogItem(name:"Men", imageName: "men", type: .men), CatalogItem(name:"Dogs", imageName: "dog", type: .dogs)]
    
    //Se guarda la categoria cuando se presiona la celda
    var categorySelected: CatalogType!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Se suscriben los protocolos
        catalogTableView.delegate = self
        catalogTableView.dataSource = self
    }
    
    //Aquñi se especifica cuántas celdas va a tener el TableView
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return catalogArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "catalogCell", for: indexPath) as? CatalogCellTableViewCell else { return UITableViewCell() }
        
        cell.catalogLabel.text = catalogArray[indexPath.row].name
        cell.catalogImageView.image = UIImage(named: catalogArray[indexPath.row].imageName)
        cell.type = catalogArray[indexPath.row].type
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        categorySelected = catalogArray[indexPath.row].type
        performSegue(withIdentifier: "catalogSegue" , sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "catalogSegue" {
            guard let nextVC = segue.destination as? CategoriesViewController else { return }
            nextVC.category = categorySelected
        }
    }
    
    @IBAction func cartButton(_ sender: UIBarButtonItem) {
        let cartStoryboard = UIStoryboard(name: "CartStoryboard", bundle: nil)
        let cartVC = cartStoryboard.instantiateViewController(withIdentifier: "cartVC")
        let nv = UINavigationController(rootViewController: cartVC)
        present(nv, animated: true, completion: nil)
    }
    
}

