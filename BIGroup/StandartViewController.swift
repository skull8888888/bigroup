//
//  StandartViewController.swift
//  BIGroup
//
//  Created by Robert Kim on 7/11/17.
//  Copyright © 2017 Octopus. All rights reserved.
//

import UIKit
import KYDrawerController

class StandartViewController: UIViewController {

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
