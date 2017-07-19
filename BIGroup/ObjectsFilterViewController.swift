//
//  ObjectsFilterViewController.swift
//  BIGroup
//
//  Created by Robert Kim on 7/4/17.
//  Copyright © 2017 Octopus. All rights reserved.
//

import UIKit

class ObjectsFilterViewController: UIViewController {

    
    @IBOutlet weak var cityDropInputView: DropInputView!
    
    @IBOutlet weak var statusDropInputView: DropInputView!
    
    @IBOutlet weak var applyButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cityDropInputView.items = ["Astana", "Almaty"]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func applyButtonTapped(_ sender: Any) {
        
    }

}
