//
//  CatalogCellTableViewCell.swift
//  ShoppingCart
//
//  Created by Noemí Rodríguez Sandoval D3 on 4/25/19.
//  Copyright © 2019 iosLab. All rights reserved.
//

import UIKit

class CatalogCellTableViewCell: UITableViewCell {

   
    @IBOutlet weak var catalogLabel: UILabel!
    @IBOutlet weak var catalogImageView: UIImageView!
    
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
