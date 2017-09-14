//
//  MyAparProcessTableViewCell.swift
//  BIGroup
//
//  Created by Robert Kim on 8/9/17.
//  Copyright © 2017 Octopus. All rights reserved.
//

import UIKit

class MyAparProcessTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imageHeight: NSLayoutConstraint!
    @IBOutlet weak var notifLabel: UILabel!
    @IBOutlet weak var processView: ProcessView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var agreementLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBAction func showButtonTapped(_ sender: Any) {
        
    }
        
}
