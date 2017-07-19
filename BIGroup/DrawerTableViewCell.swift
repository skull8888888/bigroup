//
//  DrawerTableViewCell.swift
//  BIGroup
//
//  Created by Robert Kim on 7/3/17.
//  Copyright © 2017 Octopus. All rights reserved.
//

import UIKit

class DrawerTableViewCell: UITableViewCell {
    
    @IBOutlet weak var iconView: UIImageView!

    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.backgroundColor = UIColor.bgaDarkishBlue
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
//        self.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.16)
        // Configure the view for the selected state
    }

}
