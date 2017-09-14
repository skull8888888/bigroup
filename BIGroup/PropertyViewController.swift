//
//  PropertyViewController.swift
//  BIGroup
//
//  Created by Robert Kim on 8/10/17.
//  Copyright © 2017 Octopus. All rights reserved.
//

import UIKit

class PropertyViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Оформление в собственность"
        
        let contentView = UIView.instanceFromNib("PropertyView",frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 1500), owner: self)
        
        let scrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.size.height - 64))
        scrollView.addSubview(contentView)
        scrollView.contentSize = contentView.frame.size
        
        self.view.addSubview(scrollView)
        
    }
    
}
