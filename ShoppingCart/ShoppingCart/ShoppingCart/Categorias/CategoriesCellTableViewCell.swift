//
//  CategoriesCellTableViewCell.swift
//  ShoppingCart
//
//  Created by macbook on 5/6/19.
//  Copyright © 2019 iosLab. All rights reserved.
//

import UIKit

class CategoriesCellTableViewCell: UITableViewCell {

    @IBOutlet weak var categoriesImageView: UIImageView!
    @IBOutlet weak var categoriesLabel: UILabel!
    @IBOutlet weak var categoriesPrice: UILabel!
    @IBOutlet weak var addButton: UIButton!
    
    var type: CatalogType!
    var categoriesItem: CategoriesItem! {
        didSet {
            self.categoriesLabel.text = categoriesItem.name
            self.categoriesImageView.image = UIImage(named: categoriesItem.imageName)
            self.categoriesPrice.text = "$\(categoriesItem.price) MXN"
            self.type = categoriesItem.type
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        addButton.layer.cornerRadius = 5
    
    }
    
    @IBAction func addAction(_ sender: UIButton) {
        //Creamos el componente de la acción
        let buttonActionSheet = UIAlertController(title: "Shopping Cart", message: "Do you want to add to your cart?", preferredStyle: .actionSheet)
        //Creamos el botón
        buttonActionSheet.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        //Presentamos el botón
        self.superview?.parentViewController?.present(buttonActionSheet, animated: true, completion: nil)
        
        buttonActionSheet.addAction(UIAlertAction(title: "Add", style: .default, handler: { (action) in
            CartContainer.shared.addItem(item: self.categoriesItem)
        }))
    }
    
    

}
