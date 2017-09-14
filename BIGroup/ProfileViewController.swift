//
//  ProfileViewController.swift
//  BIGroup
//
//  Created by Robert Kim on 8/7/17.
//  Copyright © 2017 Octopus. All rights reserved.
//

import UIKit
import KYDrawerController

class ProfileViewController: UIViewController {
    
    var scrollView: UIScrollView!
    
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var cardLabel: UILabel!
    @IBOutlet weak var discountLabel: UILabel!
    @IBOutlet weak var officeDiscountLabel: UILabel!
    @IBOutlet weak var keywordLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        let contentView = UIView.instanceFromNib("ProfileView",frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 562), owner: self)
        
        scrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.size.height))
        scrollView.addSubview(contentView)
        scrollView.contentSize = contentView.frame.size
        
        self.view.addSubview(scrollView)
    }
    
    
    
    @IBAction func menuButtonTapped(_ sender: Any) {
        if let drawerController = navigationController?.parent as? KYDrawerController {
            drawerController.setDrawerState(.opened, animated: true)
        }
    }
    

}
