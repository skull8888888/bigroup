//
//  SalesTableViewCell.swift
//  BIGroup
//
//  Created by Robert Kim on 7/10/17.
//  Copyright © 2017 Octopus. All rights reserved.
//

import UIKit

class SalesTableViewCell: UITableViewCell {

    
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var mainTitlelabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
