//
//  AparTableViewCell.swift
//  
//
//  Created by Robert Kim on 7/5/17.
//
//

import UIKit

class AparTableViewCell: UITableViewCell {

    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var mainImage: UIImageView!
    
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var showButton: UIButton!
    
    @IBOutlet weak var desLabel: UILabel!
    @IBOutlet weak var objectLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        showButton.layer.cornerRadius = 16
        priceLabel.layer.cornerRadius = 4
        mainView.layer.cornerRadius = 4
        mainView.layer.borderColor = UIColor.bgaPaleGreyTwo.cgColor
        mainView.layer.borderWidth = 1
        
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
