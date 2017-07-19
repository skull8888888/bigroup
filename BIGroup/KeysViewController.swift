//
//  KeysViewController.swift
//  BIGroup
//
//  Created by Robert Kim on 7/11/17.
//  Copyright © 2017 Octopus. All rights reserved.
//

import UIKit
import KYDrawerController

class KeysViewController: UIViewController {

    var scrollView: UIScrollView!
    var screen = UIScreen.main.bounds
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let contentView = UIView.instanceFromNib("KeysView", frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 2000), owner: self)
        
        scrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: screen.width, height: view.frame.size.height - 64))
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
