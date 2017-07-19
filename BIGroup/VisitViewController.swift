//
//  VisitViewController.swift
//  BIGroup
//
//  Created by Robert Kim on 7/13/17.
//  Copyright © 2017 Octopus. All rights reserved.
//

import UIKit
import KYDrawerController

class VisitViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func menuButtonTapped(_ sender: Any) {
        if let drawerController = navigationController?.parent as? KYDrawerController {
            drawerController.setDrawerState(.opened, animated: true)
        }
    }

}