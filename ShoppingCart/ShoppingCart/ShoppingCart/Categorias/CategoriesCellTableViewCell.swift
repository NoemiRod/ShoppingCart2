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
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
