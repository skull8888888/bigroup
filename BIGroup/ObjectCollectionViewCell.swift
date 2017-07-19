//
//  ObjectCollectionViewCell.swift
//  BIGroup
//
//  Created by Robert Kim on 7/3/17.
//  Copyright © 2017 Octopus. All rights reserved.
//

import UIKit

class ObjectCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var titleLabel: UIImageView!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var showButton: UIButton!
    @IBOutlet weak var desLabel: UILabel!
    @IBOutlet weak var adressLabel: UILabel!
    @IBOutlet weak var apLabel: UILabel!
    @IBOutlet weak var apNumLabel: UILabel!
    @IBOutlet weak var comLabel: UILabel!
    @IBOutlet weak var comNumLabel: UILabel!
    @IBOutlet weak var backView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        apLabel.textColor = UIColor.bgaSteel
        apNumLabel.textColor = UIColor.bgaSteel
        comLabel.textColor = UIColor.bgaSteel
        comNumLabel.textColor = UIColor.bgaSteel
        
        backView.layer.cornerRadius = 4
        backView.layer.borderWidth = 1
        backView.layer.borderColor = UIColor.bgaPaleGrey.cgColor
        backView.clipsToBounds = true
        
        showButton.layer.cornerRadius = 16
        priceLabel.backgroundColor = UIColor.bgaButterScotch
        priceLabel.layer.cornerRadius = 8
        
    }

}
