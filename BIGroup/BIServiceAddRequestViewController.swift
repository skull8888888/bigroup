//
//  BIServiceAddRequestViewController.swift
//  BIGroup
//
//  Created by Robert Kim on 8/11/17.
//  Copyright © 2017 Octopus. All rights reserved.
//

import UIKit

class BIServiceAddRequestViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = ""
        
        let contentView = UIView.instanceFromNib("BIServiceAddRequestView",frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 1000), owner: self)
        
        let scrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.size.height - 64))
        scrollView.addSubview(contentView)
        scrollView.contentSize = contentView.frame.size
        self.view.addSubview(scrollView)
        
    }

}
