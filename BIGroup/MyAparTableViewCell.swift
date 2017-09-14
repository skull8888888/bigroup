//
//  MyAparTableViewCell.swift
//  BIGroup
//
//  Created by Robert Kim on 8/9/17.
//  Copyright © 2017 Octopus. All rights reserved.
//

import UIKit

class MyAparTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var contractLabel: UILabel!
    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var notifLabel: UILabel!
    @IBOutlet weak var imageHeight: NSLayoutConstraint!
    
    var delegate: MyAparCellDelegate!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let gesture = UIGestureRecognizer(target: self, action: #selector(openButtonTapped(_:)))
        mainImageView.addGestureRecognizer(gesture)
//        imageHeight.constant = UIScreen.main.bounds.height / 3
        
        DispatchQueue.main.async {
            self.updateConstraints()
        }
        // Initialization code
    }
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    @IBAction func openButtonTapped(_ sender: Any) {
        delegate.segue("myAparFull")
    }
    
    
    @IBAction func requestButtonTapped(_ sender: Any) {
    }
    
    @IBAction func issueButtonTapped(_ sender: Any) {
    }
    
    @IBAction func paymentButtonTapped(_ sender: Any) {
    }
    
    
}
